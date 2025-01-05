local Ch = locale == "zh" or locale == "zhr"
local Pt = locale == "pt" or locale == "br"

name =
Ch and [[ 简单经济学]] or
Pt and [[ Economia Dinâmica]] or
[[ Dynamic Economy]]

description =
Ch and
[[V1.4.2
新增一个交易系统，可以在游戏内赚钱用钱了。
使用专属道具来赚取金币。
点击左上角的图标打开商品交易面板，使用金币换取需要的东西。
珍贵品每3天的早上会刷新。
不同的季节商品的价格不一样。
]] or
Pt and
[[V1.4.2
Implementado um novo sistema de compras, onde os jogadores podem ganhar moedas no jogo.
Use itens dedicados para ganhar moedas.
Clique no ícone no canto superior esquerdo para abrir a interface da loja e use moedas para comprar itens.
Itens raros serão reembaralhados a cada 3 dias pela manhã.
Os preços variam sazonalmente.
]] or
[[V1.4.2
Implemented a new shopping system, where players can now earn gold in game.
Use dedicated items to earn gold.
Click on the icon at the top left corner to open the shop interface, and use gold to buy items.
Rare items will be reshuffled every 3 days in the morning.
Prices will vary seasonally.
]]

author = "柴柴"
version = "1.4.2"
forumthread = ""
api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {}

configuration_options =
Ch and
{
    {
        name = "Language",
        label = "语言",
        options =   {
                        {description = "English", data = "en"},
                        {description = "简体中文", data = "zh"},
                        {description = "Português", data = "pt"},
                    },
        default = "zh",
    },
    {
        name = "Disintegrate",
        label = "允许点金分解",
        options =   {
                        {description = "否", data = false, hover = "不允许使用点金杖分解任何掉落物; 点金杖仅可用来击杀低血量怪物以换取金币; 选此选项后以点金杖攻击低血量生物可100%几率击杀"},
                        {description = "是", data = true, hover = "允许使用点金杖分解任何掉落物; 选此选项后以点金杖攻击低血量生物仅可25%几率击杀"},
                    },
        default = true,
    },
    {
        name = "Dig",
        label = "挖掘机当铲子",
        options =   {
                        {description = "否", data = false},
                        {description = "是", data = true},
                    },
        default = false,
    },
    {
        name = "Hammer",
        label = "挖掘机当锤子",
        options =   {
                        {description = "否", data = false},
                        {description = "是", data = true},
                    },
        default = false,
    },
    {
        name = "InitialMoney",
        label = "初始金币",
        options = {
            {description = "100", data = 100},
            {description = "200", data = 200},
            {description = "500", data = 500},
            {description = "1000", data = 1000},
            {description = "2000", data = 2000},
        },
        default = 200,
    },
    {
        name = "MaxPrice",
        label = "物品最高价格",
        options = {
            {description = "5000", data = 5000},
            {description = "7500", data = 7500},
            {description = "9999", data = 9999},
            {description = "15000", data = 15000},
            {description = "20000", data = 20000},
        },
        default = 9999,
    },
    {
        name = "SeasonMultiplierLow",
        label = "淡季价格倍数",
        options = {
            {description = "0.25倍", data = 0.25},
            {description = "0.5倍", data = 0.5},
            {description = "0.75倍", data = 0.75},
        },
        default = 0.5,
    },
    {
        name = "SeasonMultiplierHigh",
        label = "旺季价格倍数",
        options = {
            {description = "1.25倍", data = 1.25},
            {description = "1.5倍", data = 1.5},
            {description = "1.75倍", data = 1.75},
            {description = "2倍", data = 2.0},
        },
        default = 1.5,
    },
} or
Pt and
{
    {
        name = "Language",
        label = "Idioma",
        options =   {
                        {description = "English", data = "en"},
                        {description = "Chinese", data = "zh"},
                        {description = "Português", data = "pt"},
                    },
        default = "pt",
    },
    {
        name = "Disintegrate",
        label = "Desintegração",
        options =   {
                        {description = "Não", data = false, hover = "Não permite usar a Varinha de Midas para desintegrar itens; Só pode ganhar ouro matando monstros com pouca vida"},
                        {description = "Sim", data = true, hover = "Permite usar a Varinha de Midas para desintegrar itens"},
                    },
        default = true,
    },
    {
        name = "Dig",
        label = "Usar escavador como pá",
        options =   {
                        {description = "Não", data = false},
                        {description = "Sim", data = true},
                    },
        default = false,
    },
    {
        name = "Hammer",
        label = "Usar escavador como martelo",
        options =   {
                        {description = "Não", data = false},
                        {description = "Sim", data = true},
                    },
        default = false,
    },
    {
        name = "InitialMoney",
        label = "Dinheiro inicial",
        options = {
            {description = "100", data = 100},
            {description = "200", data = 200},
            {description = "500", data = 500},
            {description = "1000", data = 1000},
            {description = "2000", data = 2000},
        },
        default = 200,
    },
    {
        name = "MaxPrice",
        label = "Preço máximo dos itens",
        options = {
            {description = "5000", data = 5000},
            {description = "7500", data = 7500},
            {description = "9999", data = 9999},
            {description = "15000", data = 15000},
            {description = "20000", data = 20000},
        },
        default = 9999,
    },
    {
        name = "SeasonMultiplierLow",
        label = "Multiplicador de preço baixa temporada",
        options = {
            {description = "0.25x", data = 0.25},
            {description = "0.5x", data = 0.5},
            {description = "0.75x", data = 0.75},
        },
        default = 0.5,
    },
    {
        name = "SeasonMultiplierHigh",
        label = "Multiplicador de preço alta temporada",
        options = {
            {description = "1.25x", data = 1.25},
            {description = "1.5x", data = 1.5},
            {description = "1.75x", data = 1.75},
            {description = "2x", data = 2.0},
        },
        default = 1.5,
    },
} or
{
    {
        name = "Language",
        label = "Language/Idioma",
        options =   {
                        {description = "English", data = "en"},
                        {description = "Chinese", data = "zh"},
                        {description = "Português", data = "pt"},
                    },
        default = "en",
    },
    {
        name = "Disintegrate",
        label = "Disintegrate",
        options =   {
                        {description = "No", data = false, hover = "Not allow to use Midas Wand to disintegrate something; It can only gain gold by killing a mob with low health"},
                        {description = "Yes", data = true, hover = "Allow to use Midas Wand to disintegration something"},
                    },
        default = true,
    },
    {
        name = "Dig",
        label = "Use the stealer as a shovel",
        options =   {
                        {description = "No", data = false},
                        {description = "Yes", data = true},
                    },
        default = false,
    },
    {
        name = "Hammer",
        label = "Use the stealer as a hammer",
        options =   {
                        {description = "No", data = false},
                        {description = "Yes", data = true},
                    },
        default = false,
    },
    {
        name = "InitialMoney",
        label = "Initial money",
        options = {
            {description = "100", data = 100},
            {description = "200", data = 200},
            {description = "500", data = 500},
            {description = "1000", data = 1000},
            {description = "2000", data = 2000},
        },
        default = 200,
    },
    {
        name = "MaxPrice",
        label = "Maximum item price",
        options = {
            {description = "5000", data = 5000},
            {description = "7500", data = 7500},
            {description = "9999", data = 9999},
            {description = "15000", data = 15000},
            {description = "20000", data = 20000},
        },
        default = 9999,
    },
    {
        name = "SeasonMultiplierLow",
        label = "Low season price multiplier",
        options = {
            {description = "0.25x", data = 0.25},
            {description = "0.5x", data = 0.5},
            {description = "0.75x", data = 0.75},
        },
        default = 0.5,
    },
    {
        name = "SeasonMultiplierHigh",
        label = "High season price multiplier",
        options = {
            {description = "1.25x", data = 1.25},
            {description = "1.5x", data = 1.5},
            {description = "1.75x", data = 1.75},
            {description = "2x", data = 2.0},
        },
        default = 1.5,
    },
}
