DB_CONFIG = YAML.load_file("#{::Rails.root}/config/db.yml")[::Rails.env]