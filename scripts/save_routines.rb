# This file encompasses more than save writing and reading
# This also coveres yaml and base64 data (as the yaml is encoded to b64)

require 'yaml'
require 'digest'
require 'base64'
require_relative './clear_console'

def encode_yaml_to_b64(yaml_input)
  return Base64.encode64(yaml_input)
end

def decode_b64_to_yaml(b64_data)
end

def read_b64_from_sav(player_name)
end

def validate_sav_checksum(b64_data, checksum)
end

def write_b64_final_to_sav(b64_data, checksum)
  final_sv = <<~YAML
    data: #{b64_data}
    key: #{checksum}
  YAML

  File.open('../save.yml', 'w') { |file| file.write(final_sv) }
end

def encode_player_info_to_yaml(pl_name, px, py, hp, atk, df, mp, money, inv, pl_difficulty, dhhm, dham, dhdm, dhmm, dhxrm, dhcrm)
  plr_yaml_data = <<~YAML
    player:
      name: #{pl_name}
      px: #{px}
      py: #{py}
      hp: #{hp}
      atk: #{atk}
      df: #{df}
      mp: #{mp}
      money: #{money}
      inventory:
        page1: 
          s0: #{inv[0][0]}
          s1: #{inv[0][1]}
          s2: #{inv[0][2]}
          s3: #{inv[0][3]}
          s4: #{inv[0][4]}
          s5: #{inv[0][5]}
        page2:
          s0: #{inv[1][0]}
          s1: #{inv[1][1]}
          s2: #{inv[1][2]}
          s3: #{inv[1][3]}
          s4: #{inv[1][4]}
          s5: #{inv[1][5]}
        page3:
          s0: #{inv[2][0]}
          s1: #{inv[2][1]}
          s2: #{inv[2][2]}
          s3: #{inv[2][3]}
          s4: #{inv[2][4]}
          s5: #{inv[2][5]}
        page4:
          s0: #{inv[3][0]}
          s1: #{inv[3][1]}
          s2: #{inv[3][2]}
          s3: #{inv[3][3]}
          s4: #{inv[3][4]}
          s5: #{inv[3][5]}
        page5:
          s0: #{inv[4][0]}
          s1: #{inv[4][1]}
          s2: #{inv[4][2]}
          s3: #{inv[4][3]}
          s4: #{inv[4][4]}
          s5: #{inv[4][5]}
    meta:
      d: #{pl_difficulty}
      dhhm: #{dhhm}
      dham: #{dham}
      dhdm: #{dhdm}
      dhmm: #{dhmm}
      dhxrm: #{dhxrm}
      dhcrm: #{dhcrm}
  YAML
  # dhhm  ->> difficulty_hostile_hp_mod
  # dham  ->> difficulty_hostile_atk_mod
  # dhdm  ->> difficulty_hostile_def_mod
  # dhmm  ->> difficulty_hostile_mp_mod
  # dhxrm ->> difficulty_hostile_xp_reward_mod
  # dhcrm ->> difficulty_hostile_coin_reward_mod

  return plr_yaml_data
end

# item encoding regex: /^(\d+)@(0x[0-9A-Fa-f]+)/