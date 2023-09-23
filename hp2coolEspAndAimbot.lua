-- Get the head of the person whose head you want the cursor to be on.
local head = game.Players.LocalPlayer.Character:WaitForChild("Head")

-- Define a function that will move the cursor to the head element's position.
function moveCursorToHead()
  -- Get the head element's position.
  local headPosition = head.CFrame.p

  -- Set the cursor's position to the head element's position.
  game.GetService("UserInputService").MousePosition = headPosition
end

-- Add an event listener to the RunService so that the cursor is always moved to the head element's position when the game renders.
game:GetService("RunService").RenderStepped:Connect(moveCursorToHead)

-- Get all the characters in the game.
local characters = game.Players:GetPlayers()

-- Iterate over all the characters in the game and highlight them.
for _, character in ipairs(characters) do
  -- Create a new Highlight object and parent it to the character.
  local highlight = Instance.new("Highlight")
  highlight.Parent = character

  -- Set the Highlight's properties.
  highlight.FillTransparency = 1
  highlight.OutlineTransparency = 0
end
