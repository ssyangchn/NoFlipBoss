SMODS.Keybind({
    key_pressed = "x",
    action = function(self)
        if G.jokers and G.jokers.highlighted then
            for i = 1, #G.jokers.highlighted do
              G.jokers.highlighted[i]:flip()
            end
        end
        if G.hand and G.hand.highlighted then
            for i=1, #G.hand.highlighted do
              G.hand.highlighted[i]:flip()
            end
        end
    end
})
