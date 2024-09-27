local Players = game:GetService('Players')
local player = Players.LocalPlayer
local playerGui: PlayerGui = player:WaitForChild('PlayerGui')

local function newScreenGui(name: string)
	local screenGui: ScreenGui = Instance.new('ScreenGui')
	screenGui.Name = name
	screenGui.Parent = playerGui
	screenGui.IgnoreGuiInset = true
	return screenGui
end

local function newFrame(name: string, screenGui: ScreenGui)
	local frame: Frame = Instance.new('Frame')
	frame.Name = name
	frame.Parent = screenGui
	return frame
end

local function frameFit(frame: Frame)
	frame.Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0))
end

local function newImageLabel(name: string, frame: Frame)
	local imageLabel = Instance.new('ImageLabel')
	imageLabel.Name = name
	imageLabel.Parent = frame
	return imageLabel
end

local function loadImageFromId(id: number)
	local result = string.format('rbxassetid://%i', id)
	return result
end
local containerOne = newScreenGui('containerOne')
local containerOneFrame = newFrame('Background', containerOne)
frameFit(containerOneFrame)
local containerOnePlayer = newImageLabel('player', containerOneFrame)
containerOnePlayer.Image = loadImageFromId(7245642976)
containerOnePlayer.ResampleMode = Enum.ResamplerMode.Pixelated
containerOnePlayer.AnchorPoint = Vector2.new(0.5, 0.5)
containerOnePlayer.Position = UDim2.new(UDim.new(0.5, 0), UDim.new(0.5, 0))
containerOnePlayer.Size = UDim2.new(
	UDim.new(containerOneFrame.Size.Width.Scale / 2, containerOneFrame.Size.Width.Offset / 2),
	UDim.new(containerOneFrame.Size.Height.Scale / 2, containerOneFrame.Size.Height.Offset / 2)
)
