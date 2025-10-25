return {

  {
    "mini.starter",

    opts = function()
      local logo = table.concat({
        "$@@@@@@@B@@B@@$@@@@@@@@@@$$$$$@8owOwqqpppppppppqqqb%mZB@@@@@@@@@B@B@@B@B",
        "$$$$$$$$$$@@@@@@@@@@@$$$$$8owJuf\\|\\//////////////\\r8fiM$@@@@@@@@$@$@@@@$",
        "$$$$$$$$$$$$$$$$$$$$$@&h0vt\\|\\\\/********tttttttt**t*b?M$@@@@@@@$$$$$$$$$",
        "$$$$$$$$$$$$$$$$$B*hQv/||\\/*t***********tttttttt*//OBjb$B@@@@@@$$$$$$$$$",
        "$$$$$$$$$$$$$$$$huxf\\)1}[[}1|*tt*******tttttttt**/x&kJB@@@@@$$$$$$$$$$$",
        "$$$$$$$$$$$$$$B0\\*\1]_++_[1[??{|*tt**ttttttttttt**/Q@Ld$@@@@$$$$$$$$$$$",
        "$$$$$$$$$$$$@BCrt}i\".'```'^l~]{]+-}\\***ttttttttttt**tk#jW$@@@$$$$$$$$$$$",
        "$$$$$$$$$$$$@0zj_' `^^li^^^^``,<1[<~[/t***tttttttttt/zBvv@@@@$$$$$$$$$$$",
        "$$$$$$$$$$$$kuJ]`'^\"^^i~:`^^^^^'I1(_<_1***tttttttttt**db_o$@@$$$$$$$$$$$",
        '$$$$$$$$$$$@zU*:;II^^^I~l`^^^^^^`"-|?<~{***tttttttttt/va[k$@@$$$$$$$$$$$',
        "$$$$$$$$$$$*ju?,lI,^^^;~<,^^^^^^^:^l{?<~{**tttttttttt*tp|b$@@$$$$$$$$$$$",
        "$$$$$$$$$@$qrj~!IIIl,^-<<;````^,;>i;l{-~+)***tttttttt*/Qfb$@@$$$$$$$$$$$",
        "$$$$$$$$$@$Lj*i><<\\|[1n/{[}1)|*junucf<{+<+|t*tttttttt*/Ytd$@@$$$$$$$$$$$",
        "$$$$$$$$$@$Q*\\!~<{YUUCUUzxUUUUYvYYUXX(<{<<?/tttttttttt/Xtd$@@$$$$$$$$$$$",
        '$$$$$$$$$$$m{|l~<}Yz{-|rncXXXYYXx|i"?fI[-<~(t*tttttttt/X|k$@@$$$$$$$$$$$',
        '$$$$$$$$$$$*}\\li<_zz~"<*)cXzzzzz*{>>]j/<{<<?/ttttttttt/C)#$@@$$$$$$$$$$$',
        "$$$$$$$$$$@@j1{i<z0LUJ0mpwZbmmmO0LLCYXX?[?<~)tttttttt**z(&$@@$$$$$$$$$$$",
        "$$$$$$$$$$@$p[)>\\&WM&&&8WUZ&WWWWMMM#ohpx<}<<[t*tttttt**u*8$@@$$$$$$$$$$$",
        "$$$$$$$$$$$$Bf+>{#WMWMWpCwMMMMM#&WWWWW&a-?~<_/**ttttt*/v*o$@@$$$$$$$$$$$",
        "$$$$$$$$$$$$$d>~ix&WMWMzO$B8W&*QUMWWWWW8n<_<~|t*tttttt/cxL$@@$$$$$$$$$$$",
        "$$$$$$$$$$$$$@r!<iC8MMW#vO#&mohCZWMWWWW&p+?<<[t***tttt*nzj@$@$$$$$$$$$$$",
        "$$$$$$$$$$$@@$M]<<+O&WW&MoW&&&WW&&WMWWMWo??~~+|***tttttf?/$$@$$$$$$$$$$$",
        "$$$$$$$$$$$$$$$L!~<~L8WMddkbdbpZLwWWW&&#O>_~~~?/tttttttt+-8$@$$$$$$$$$$$",
        "$$$$$$$$$$$$$$$%\\!~>[*8#mbaaaoao*#W&8omLp1++~~~}tttttttt\\!\\W$@$$$$$$$$$$",
        '$$$$$$$$$$$$$$$$p!<~>|p@$$$$$$@B@@@MZ0kW8*l+~~~~1*t*/|)\t\\"j@@@@$$$$$$$$',
        '$$$$$$$$$$$$$$$@@jI~~>+xZ#@$BBB8#bm0hWWW&*"+<~~~+1)]_~<-/}.{8@@@@@$$$$$$',
        '$$$$$$$$$$$$$$$@BfI~<~~ii-\\/Cm0O0qoW&WWW8C"-~<~~~~~~~~[/1,}pB@@@@@$$$$$$',
        "$$$$$$$$$$$$$$$$L:<~~~~~~+,>o8Mhd88888888bI-+<<~~~~~<_?<+[zo@$@@@@$$$$$$",
        "$$$$$$$$$$@$$%aw1,<~++~~~~>-xL#MoU//\fuUwh]:+~~<>!!III!1m%b1dB$$$@$$$$$$",
        '$$$$$$$$$@@hCXzzx]l::,,,,",::!(t<,;;;::,;l,:>!ll!!i>~-{/r*$Lrfu0*$$$@$$$',
        '$$$$$$$$@$Mjd0r**t[i!!!i>>i:","`!~+~~~~~~<<<<<<<<~-}|/**uYUZbhpY/tZ%$$@$',
        "$$$$$$$$$$bYO//**1~~~~~~~~~~~>!<~~~~~~~~~~~~~+-]{(/**t*t*////jXpWpx\\0B$@",
        "$$$$$$$$$C[mu/**|+<~~~~~~~~~~~~~~~~~~~~~_-[1(\\/******ttttttt**//xQooxr&$",
        "$$$$$$$@c{kZ*/*/?<<~~~~~~~~~~~~<<~_?[{(\\/***tt******ttttttttttt*/\tZBLrM",
        "$$$$@@$z]wz///*1~<<~~~~~~~~~~~-[1\\*tttt*************tttttttttttttt**L@wn",
        "$$$$@$U-Jj\\/**t?<<<~~~~~~~~~]|***ttt*t********tttttt****ttttttttttt*/C%u",
        "$$$$$d_Xf///**/+<~~~~~~~~~~_/t****************tttttt******tttttttttt*/0d",
        "$$$$@tXz|/////\\~><<<<<><<<>+\\/////////////////////////////////////////*Z",
        "$$$$%QMmJCCCCCCvxxxnnnnnnnxnUCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCJJCCCCO",
      }, "\n")
      local pad = string.rep(" ", 22)
      local new_section = function(name, action, section)
        return { name = name, action = action, section = pad .. section }
      end

      local starter = require("mini.starter")
  --stylua: ignore
  local config = {
    evaluate_single = true,
    header = logo,
    items = {}
  }
      return config
    end,
  },
}
