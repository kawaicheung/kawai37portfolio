# app/models/concerns/constants.rb
module Constants
  NAVIGATION_PATHS = [
    :root_path,
    :pitch_path,
    :works_path,
    :works_dnsdigest_path,
    :works_donedone_path,
    :works_donedone_gmail_path,
    :works_meetle_path,
    :works_baseball_scoreboards_path,
    :works_naming_things_path,
    :works_communications_path,
    :contact_path
  ].freeze

  NAVIGATION_SECTIONS = [
    { name: "The Pitch", path: "pitch" },
    { name: "The Work", path: "works" },
    { name: "Contact Me", path: "contact" }
  ].freeze
end
