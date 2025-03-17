# app/models/concerns/constants.rb
module Constants
  NAVIGATION_PATHS = [
    :root_path,
    :pitch_path,
    :pitch_why_id_love_this_role_path,
    :works_path,
    :works_donedone_path,
    :works_dnsdigest_path,
    :works_baseball_scoreboards_path,
    :works_naming_things_path,
    :works_shiftlist_path,
    :works_secret_project_path,
    :writing_path,
    :writing_the_developers_code_path,
    :writing_top_picks_path
  ].freeze

  NAVIGATION_SECTIONS = [
    { name: "The Pitch", path: "pitch" },
    { name: "The Work", path: "works" }
  ].freeze
end
