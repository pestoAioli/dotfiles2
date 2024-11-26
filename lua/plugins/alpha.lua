return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
      |--------------------------------------------------------------------------------|    
      |&&&&&&&&&&&&&&Y?YPB&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&BPY7J&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&#???YY5G&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&BPYY???B&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&G????YYY5B&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&#PYYYJ???P&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&5?????JYYYG&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&GYYYYJ????Y&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&Y??????YYYYP&&&&&&&&&&&&&&&&&&&&&&&&&&&&&#5YYYYY?????J&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&J???????YYYY5&&&&&&&&&&&&&&&&&&&&&&&&&&&GYYYYYYJ?????J&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&Y???????JYYYY5&&&&&&&&&&&&&&&&&&&&&&&&&GYYYYYYY??????J&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&5????????YYYYY5&&&&&&&&&&&&&&&&&&&&&&&#P5YYYYYJ??????Y&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&G????????JY5PGB&&&&&&&&&&&&&&&&&&&&&&&&&&BP5YYJ??????P&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&#???????JPB#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&BPJ??????B&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&#J????YG#&&&#####&&&&&&B&&&&&#&&&&&&&#BBB##&&&B5?????#&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&Y??YB&&&#BB######&&&&G7&@&@#?#&&&&&&&&&##GG&&&&BY??Y&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&5?G&&&&&##&&&@@&&&&&&G^7PGP7~#&&&&&@@@@&&&#P#&&&&G?5&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&GB&&&&&&&&&#G5PB&&&&&&P7~~!?G&&&&#PYJJ5B&&&&&&&&&&BB&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&&B7:^7JYP#&&&&&&###&&&&&BP55Y?^:!G&&&&&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&#&&&B^ 7PGPGPPB&&&&&&&&&&&&B5Y5PPPG?..P@&#B&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&#BB&7 ~GPPP!::7B&&&&&&&&&&&J:..!PPPG7 ~#BB#&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&#&&&#~ ?PYP!....7&&&&&&&&&&#:....75Y55:.G&&&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&##B#&7.^~7P!....:#&&&&&&&&&&7....7G?~~..G#BBG#&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&B:.~YY5?^^^?&&&&&&&&&&&G7::!5Y57..~###&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&&P^YYJJ5??5G&&&&&&&&&&&#P?!5YJY5::P&&&&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&&&#555YY5PB&&&&&&#&&&&&&#G5YY5Y?JB&&&&&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&&&&&####&&&&&&&&B5B&&&&&&&&#####@&&&&&&&&&&&&&&&&&&&&&&&&&|
      |&&&&&&&&&&&&&&&&&&&&&&&&#P&P&G#&&&&&&&&&&&&&&&&&BB&P&G&&&&&&&&&&&&&&&&&&&&&&&&&&|
      |--------------------------------------------------------------------------------|
                                    ,--.                                                 ____   
,-.----.     ,---,  ,----..     ,--/  /|                                  ,---,        ,'  , `. 
\    /  \ ,`--.' | /   /   \ ,---,': / '    ,---,                 ,---.,`--.' |     ,-+-,.' _ | 
;   :    \|   :  :|   :     ::   : '/ /    /_ ./|    ,---,.      /__./||   :  :  ,-+-. ;   , || 
|   | .\ ::   |  '.   |  ;. /|   '   ,---, |  ' :  ,'  .' | ,---.;  ; |:   |  ' ,--.'|'   |  ;| 
.   : |: ||   :  |.   ; /--` '   |  /___/ \.  : |,---.'   ,/___/ \  | ||   :  ||   |  ,', |  ': 
|   |  \ :'   '  ;;   | ;    |   ;  ;.  \  \ ,' '|   |    |\   ;  \ ' |'   '  ;|   | /  | |  || 
|   : .  /|   |  ||   : |    :   '   \\  ;  `  ,':   :  .'  \   \  \: ||   |  |'   | :  | :  |, 
;   | |  \'   :  ;.   | '___ |   |    '\  \    ' :   |.'     ;   \  ' .'   :  ;;   . |  ; |--'  
|   | ;\  \   |  ''   ; : .'|'   : |.  \'  \   | `---'        \   \   '|   |  '|   : |  | ,     
:   ' | \.'   :  |'   | '/  :|   | '_\.' \  ;  ;               \   `  ;'   :  ||   : '  |/      
:   : :-' ;   |.' |   :    / '   : |      :  \  \               :   \ |;   |.' ;   | |`-'       
|   |.'   '---'    \   \ .'  ;   |,'       \  ' ;                '---" '---'   |   ;/           
`---'               `---`    '---'          `--`                               '---'            
   ]]
    --     local logo = [[
    -- |----------------------------------------------------------------------------------------------------|
    -- |^::::::::::::::::::~!!7!~:.:........:::...............................:.................::::::::::::|
    -- |:::::.............7YJ?JJJ!.............~5PP57:....................................................::|
    -- |:::...............!PY!5P5:........... !&@&&&&J                                        . ...........:|
    -- |::................:7^~!7 .....   .....:G&BGJJ:.                                           ..........|
    -- |:::...............!J55P?7:             ^YJ5?~.                                        ^7^.   .......|
    -- |:::.......... .^^JBB&&&@#57!:  .. .^!?55YY5GP5J!^:                                   ~B##GY7^......:|
    -- |::::........~JP#####&#B&###&B57..5#&@@@@@@@@@@@@&#?.    ..                          7GGB####7......:|
    -- |::::........?&@@##&&&B#&BB&&&&J..Y@@&@@@@@&@@@@@@@@BY!^.    ..  .:..              .?BB#BBBG!.......:|
    -- |::::........:P@&BB&&##&@&&@@&J...5@@@@@@@@@@@&@#??5B&&&#Y?~:   .^!~^^:..     ... :YBGPGB#B~........:|
    -- |::::.........Y#&B&@&&&&&@@@@@P:..G@BY@@@@@@@@@#~....:~?#&@@#PJ!!~7?!~^^^!?~:.   :5BBBGBBP^.........:|
    -- |::::.........J#&JB&&&&&##J&@5Y!.^#@J P@@@@@@@@7........5G^5&PB##5?YP5J5#@@&#YJ?7P55555PY:..........:|
    -- |::::.........7&#?G@&&&@@BJ&5!...7@&^.5@@@@@&&@7........~Y.757:^!JP55B######BGGGPGGPPGP?............:|
    -- |::::.........J&&G&@#B&&&@&&#Y~.:G@B.!&&&&&&&&&B:..........~?~7:::Y&####B#&GGP5PPPP5PGB!^..........::|
    -- |:::..........?#@@@@##&&&#&@&P?.^#@J.5@&&&&&&&&&~...........Y.:^~~JP~GBBYPB#B#BGPG55Y5BYYP?!^......::|
    -- |:::..........~#&&@&&##&@&&@&J..~@&^:#&&&&&&&&&&7...........77....!P7?!P5!7JPPBBGBGGB#GYGPYGPJ7~^:..:|
    -- |:::..........:B#B&&#&B#&@&@&@5^7&G.?@&&&&@&&&&&J...........:Y:...!?^:::!:7PPP55PP##GGPBG55GB5YYG5?~:|
    -- |::::........:?B#B&BB@&##&&@&&&BBBY:7@&@@&JB@&&&7............7^....^.....7GGBBGGBBBG?:J77YPB#PPBPPY^:|
    -- |::::.........:P&&&BB&&G5G&@&#B55##GB&&@@5 Y@&&&7......................:?5PPPP5PBG5PP~~?..:!GYG5PY^::|
    -- |::::.........!&&&#B#&#J#5B&&@BGPY7^B&&&&5JP&&&@J.................... ^PGPP5Y5P!5J^~PP~Y^...J^:Y5::::|
    -- |::::.........Y@&##BB#GY###BB##&#@#P#&&@P~?Y####5:.................. :YGGBBGPP5.^^..~JJ!?...!?.:J~.::|
    -- |::::........^#@&##&##GP&@&#B#55#&&@&###P?~:B@&#GP57:.       .......7Y5YYY5BP:5^......^:Y...:Y:.:Y^.:|
    -- |::::........5@&##&@&#BB@@@@&##J!5#&&&BB#&#PB&&@J:7YP5YJ?7!~:......~YPGP5YY?:.7?........J~...?!..^Y::|
    -- |::::.......7?~P##&@&#&&@@@B&&B#J:!G#BB####&&BB#5:..^?P###BY7....^J777J?JP?...:Y........~^...^J...77.|
    -- |::::......^BGP#&&&@&&@@@@@#&#BB#5:Y@#BB###&&&BGGPY!:.:!5BG!:...^?PPYJJJY~.....77 ............Y:..:Y:|
    -- |::::.....^B@@@@@@@@@@@&@@@@@&####G#&@&7JPB#&&@#GGGB?....!5GJ..!5YJPGY?Y^......:5:............?!...J~|
    -- |:::......Y@&@@@@@@@@@@GP@@@@&&######@G..:!YGB#@&BP5^......77.!PGBPY5BY:....... ?7 ...........^J...^^|
    -- |::::....:G@@@@@@@&@@&&&!P@@@&&@&####&7.....^5BB#&?:........:!J?7J775J:.........^5.............7:...:|
    -- |:::::::.~&@@&@@@@@@@@@@5:P@@@&&&&##BBP^.....~&#BB#BPJ^....:Y5Y?7~!J~............5:.................:|
    -- |:::::::.J@@B&@@@@@&@@@@&^:B@@@@&&#&#B#G!.....B&&#PB&@Y...^???JJY5Y^.............Y^.................:|
    -- |::::::::B@&?&@@@&@#@@@@@J.~#&5P@&&#&#B#B7....?@&&?^J#?..~???7?!??^..............:..................:|
    -- |::::::.?@&J~BGYP@&#@@&@@G:.!7 ^#&&#&&BBBB?...!@&@5..^JJ7Y??7!7?7...................................:|
    -- |:::::.~#@#^:!Y.^G##BB#@@@~..:::P@&&#&&BG5?:..^#&@Y:::.75J???7J!....................................:|
    -- |:::::Y&@&#^..~:.:~~:~5PG#Y..?55#&&&&B?~^...::^B@B55J?^.:~!77J7.....................................:|
    -- |:::~B@@&#GYYYY5YY?777!~::~.:~?YGB&&@#?^....^!7?JJ!^^:....:^~~:.....................................:|
    -- |:::~5PJ!^^^^::::::..........::^~!JPGP^......      ................................................::|
    -- |----------------------------------------------------------------------------------------------------|
    --
    --       ██▀███   ██▓ ▄████▄   ██ ▄█▀▓██   ██▓ ██▒   █▓ ██▓ ███▄ ▄███▓
    --      ▓██ ▒ ██▒▓██▒▒██▀ ▀█   ██▄█▒  ▒██  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
    --      ▓██ ░▄█ ▒▒██▒▒▓█    ▄ ▓███▄░   ▒██ ██░ ▓██  █▒░▒██▒▓██    ▓██░
    --      ▒██▀▀█▄  ░██░▒▓▓▄ ▄██▒▓██ █▄   ░ ▐██▓░  ▒██ █░░░██░▒██    ▒██
    --      ░██▓ ▒██▒░██░▒ ▓███▀ ░▒██▒ █▄  ░ ██▒▓░   ▒▀█░  ░██░▒██▒   ░██▒
    --      ░ ▒▓ ░▒▓░░▓  ░ ░▒ ▒  ░▒ ▒▒ ▓▒   ██▒▒▒    ░ ▐░  ░▓  ░ ▒░   ░  ░
    --        ░▒ ░ ▒░ ▒ ░  ░  ▒   ░ ░▒ ▒░ ▓██ ░▒░    ░ ░░   ▒ ░░  ░      ░
    --        ░░   ░  ▒ ░░        ░ ░░ ░  ▒ ▒ ░░       ░░   ▒ ░░      ░
    --         ░      ░  ░ ░      ░  ░    ░ ░           ░   ░         ░
    --
    -- ]]
    --
    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      -- dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
      -- dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    -- for _, button in ipairs(dashboard.section.buttons.val) do
    --   button.opts.hl = "AlphaButtons"
    --   button.opts.hl_shortcut = "AlphaShortcut"
    -- end
    -- dashboard.section.header.opts.hl = "AlphaHeader"
    -- dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.buttons.opts.spacing = 0
    -- dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 0
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
