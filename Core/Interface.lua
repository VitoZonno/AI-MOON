local Interface = {}
function Interface.Build(callback)
    local sg = Instance.new("ScreenGui", game:GetService("CoreGui")) -- Più difficile da trovare per i noob
    sg.Name = "Internal_Service_Data"
    
    local f = Instance.new("TextBox", sg)
    f.Size = UDim2.new(0, 200, 0, 30)
    f.Position = UDim2.new(0, 10, 1, -40)
    f.BackgroundColor3 = Color3.new(0,0,0)
    f.BackgroundTransparency = 0.5
    f.TextColor3 = Color3.new(1,1,1)
    f.Text = "Comando..."
    
    f.FocusLost:Connect(function(enter)
        if enter then callback(f.Text); f.Text = "" end
    end)
end
return Interface
