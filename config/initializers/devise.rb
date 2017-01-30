Devise.secret_key = "82dd2010a42baf0ac8323d550563fc07f354e987c82ca3dfe804b6c3428c389cd3f839eab4ae9580ad53a7b7a51cf4d8cee9"

Devise.setup do |config|
    # Required so users don't lose their carts when they need to confirm.
    config.allow_unconfirmed_access_for = 10.days
    
    # Fixes the bug where Confirmation errors result in a broken page.
    config.router_name = :spree
    
    # Add any other devise configurations here, as they will override the defaults provided by spree_auth_devise.
end
