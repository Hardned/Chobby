UserListPanel = LCS.class{}

function UserListPanel:init(userUpdateFunction, spacing)
	self.userUpdateFunction = userUpdateFunction
	self.spacing = spacing

	self.userPanel = ScrollPanel:New {
		x = 0,
		right = 0,
		y = 0,
		bottom = 0,
		horizontalScrollbar = false,
	}

	self.panel = Control:New {
		x = 0,
		y = 0,
		right = 0,
		bottom = 0,
		padding      = {0, 0, 0, 0},
		itemPadding  = {0, 0, 0, 0},
		itemMargin   = {0, 0, 0, 0},
		children = {
			self.userPanel,
		},
	}
	self:Update()
end

function UserListPanel:OnJoined(userName)
	self:Update()
end

function UserListPanel:OnLeft(userName)
	self:Update()
end

function UserListPanel:CompareItems(userName1, userName2)
	local userData1 = lobby:GetUser(userName1)
	local userData2 = lobby:GetUser(userName2)
	if userData1.isAdmin ~= userData2.isAdmin then
		return userData1.isAdmin
	end
	return true
end

function UserListPanel:GetUsers()
	local channel = self.userUpdateFunction()
	return (channel and channel.users) or {}
end

local function CompareUsers(userName, otherName)
	local userData = lobby:GetUser(userName)
	local otherData = lobby:GetUser(otherName)
	if not otherData then
		return true
	end
	
	if otherData.isAdmin ~= userData.isAdmin then
		return userData.isAdmin
	end
	
	return userName < otherName
end

function UserListPanel:Update()
	self.userPanel:ClearChildren()
	local users = self:GetUsers()
	
	table.sort(users, CompareUsers)
	
	for i = 1, #users do
		self:AddUser(users[i])
	end
end

function UserListPanel:AddUser(userName)
	local userData = lobby:GetUser(userName)
	if not userData then
		Spring.Echo("User data not found", userName)
		return
	end
	if userData.isBot and not Configuration.displayBots then 
		return 
	end
	
	local userControl = WG.UserHandler.GetChannelUser(userName)
	userControl:SetPos(nil, #(self.userPanel.children) * self.spacing)
	self.userPanel:AddChild(userControl)
end