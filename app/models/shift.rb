class Shift < ApplicationRecord

    def translate(num)
        if num == 1
            x = "○"
        elsif num == 2
            x = "△"
        else
            x = "×"
        end

        return x

    end
end
