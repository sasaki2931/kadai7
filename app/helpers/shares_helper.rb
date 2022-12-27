module SharesHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'create'
          confirm_shares_path
        elsif action_name == 'edit'
          share_path
        end
    end
end
