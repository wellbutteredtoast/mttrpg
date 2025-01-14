# This file encompasses more than save writing and reading
# This also coveres yaml and base64 data (as the yaml is encoded to b64)

require 'yaml'
require_relative './clear_console'
require_relative './player'

def validate_sav_checksum(b64_data, checksum)
end

def write_b64_final_to_sav(b64_data, checksum)
end

def encode_yaml_to_b64(yaml_data)
end

def encode_player_info_to_yaml(pl_name, pl_difficulty, dhhm, dham, dhdm, dhmm, dhxrm, dhcrm)
  # dhhm  ->> difficulty_hostile_hp_mod
  # dham  ->> difficulty_hostile_atk_mod
  # dhdm  ->> difficulty_hostile_def_mod
  # dhmm  ->> difficulty_hostile_mp_mod
  # dhxrm ->> difficulty_hostile_xp_reward_mod
  # dhcrm ->> difficulty_hostile_coin_reward_mod
end