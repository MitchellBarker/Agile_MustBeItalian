module ChowsHelper
    def pretify num
        if num
            if num == -1
                "<1"
            else
                "%g" % ("%.2f" % num)
            end
        end 
    end
end
