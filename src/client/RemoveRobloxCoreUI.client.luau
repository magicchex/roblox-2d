local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local StarterGui = game:GetService('StarterGui')

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)

if UserInputService.TouchEnabled then
	print('Touch enabled.')
	local playerGui: PlayerGui = Players.LocalPlayer:FindFirstChild('PlayerGui')
	print(string.format('Result of search for TouchGui inside PlayerGui: %*', playerGui))
	local destroy = playerGui:WaitForChild('TouchGui'):Destroy()
	print(string.format('Destroyed touch controls. Result: %*', destroy))
end
