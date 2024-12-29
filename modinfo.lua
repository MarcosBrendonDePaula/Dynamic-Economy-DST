local Ch = locale == "zh" or locale == "zhr"
local Pt = locale == "pt" or locale == "ptb"

name =
Ch and [[ 动态经济]] or
Pt and [[ Economia Dinâmica]] or
[[ Dynamic Economy]]

description =
Ch and
[[V1.0.0
基于Simple Economy的改进版本。
新特性：
- 服务器资金池系统
- 每日税收系统
- 财富排行榜
- 多语言支持（中文、英文、葡萄牙文）
原作者: 柴柴
]] or
Pt and
[[V1.0.0
Uma derivação melhorada do Simple Economy.
Novos recursos:
- Sistema de capital rotativo do servidor
- Sistema de imposto diário
- Ranking dos mais ricos
- Suporte para vários idiomas (Português, Inglês, Chinês)
Mod original por: 柴柴
]] or
[[V1.0.0
An enhanced fork of Simple Economy.
New features:
- Server capital pool system
- Daily tax system
- Wealth ranking system
- Multi-language support (English, Chinese, Portuguese)
Original mod by: 柴柴
]]

author = "Marcos"
version = "1.0.0"
forumthread = ""
api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {"economy"}

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
        name = "ServerCapital",
        label = "服务器资金池",
        options =   {
                        {description = "100000", data = 100000},
                        {description = "500000", data = 500000},
                        {description = "1000000", data = 1000000},
                        {description = "5000000", data = 5000000},
                    },
        default = 1000000,
    },
    {
        name = "DailyTaxRate",
        label = "每日税率",
        options =   {
                        {description = "1%", data = 0.01},
                        {description = "2%", data = 0.02},
                        {description = "5%", data = 0.05},
                        {description = "10%", data = 0.10},
                    },
        default = 0.05,
    },
    {
        name = "InitialCoins",
        label = "初始金币",
        options =   {
                        {description = "100", data = 100},
                        {description = "200", data = 200},
                        {description = "500", data = 500},
                        {description = "1000", data = 1000},
                    },
        default = 200,
    },
    {
        name = "MaxCoins",
        label = "最大金币上限",
        options =   {
                        {description = "100000", data = 100000},
                        {description = "500000", data = 500000},
                        {description = "999999", data = 999999},
                        {description = "9999999", data = 9999999},
                    },
        default = 999999,
    },
    {
        name = "InitialLevel",
        label = "初始等级",
        options =   {
                        {description = "1", data = 1},
                        {description = "2", data = 2},
                        {description = "3", data = 3},
                    },
        default = 1,
    },
    {
        name = "PreciousRefreshDays",
        label = "珍贵物品刷新天数",
        options =   {
                        {description = "1天", data = 1},
                        {description = "2天", data = 2},
                        {description = "3天", data = 3},
                        {description = "5天", data = 5},
                    },
        default = 3,
    },
    {
        name = "Disintegrate",
        label = "允许点金分解",
        options =   {
                        {description = "否", data = false},
                        {description = "是", data = true},
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
} or
Pt and
{
    {
        name = "Language",
        label = "Idioma",
        options =   {
                        {description = "English", data = "en"},
                        {description = "简体中文", data = "zh"},
                        {description = "Português", data = "pt"},
                    },
        default = "pt",
    },
    {
        name = "ServerCapital",
        label = "Capital do Servidor",
        options =   {
                        {description = "100.000", data = 100000},
                        {description = "500.000", data = 500000},
                        {description = "1.000.000", data = 1000000},
                        {description = "5.000.000", data = 5000000},
                    },
        default = 1000000,
    },
    {
        name = "DailyTaxRate",
        label = "Taxa de Imposto Diário",
        options =   {
                        {description = "1%", data = 0.01},
                        {description = "2%", data = 0.02},
                        {description = "5%", data = 0.05},
                        {description = "10%", data = 0.10},
                    },
        default = 0.05,
    },
    {
        name = "InitialCoins",
        label = "Moedas Iniciais",
        options =   {
                        {description = "100", data = 100},
                        {description = "200", data = 200},
                        {description = "500", data = 500},
                        {description = "1000", data = 1000},
                    },
        default = 200,
    },
    {
        name = "MaxCoins",
        label = "Limite Máximo de Moedas",
        options =   {
                        {description = "100.000", data = 100000},
                        {description = "500.000", data = 500000},
                        {description = "999.999", data = 999999},
                        {description = "9.999.999", data = 9999999},
                    },
        default = 999999,
    },
    {
        name = "InitialLevel",
        label = "Nível Inicial",
        options =   {
                        {description = "1", data = 1},
                        {description = "2", data = 2},
                        {description = "3", data = 3},
                    },
        default = 1,
    },
    {
        name = "PreciousRefreshDays",
        label = "Dias para Renovação de Itens Raros",
        options =   {
                        {description = "1 dia", data = 1},
                        {description = "2 dias", data = 2},
                        {description = "3 dias", data = 3},
                        {description = "5 dias", data = 5},
                    },
        default = 3,
    },
    {
        name = "Disintegrate",
        label = "Permitir Desintegração",
        options =   {
                        {description = "Não", data = false},
                        {description = "Sim", data = true},
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
} or
{
    {
        name = "Language",
        label = "Language",
        options =   {
                        {description = "English", data = "en"},
                        {description = "简体中文", data = "zh"},
                        {description = "Português", data = "pt"},
                    },
        default = "en",
    },
    {
        name = "ServerCapital",
        label = "Server Capital",
        options =   {
                        {description = "100,000", data = 100000},
                        {description = "500,000", data = 500000},
                        {description = "1,000,000", data = 1000000},
                        {description = "5,000,000", data = 5000000},
                    },
        default = 1000000,
    },
    {
        name = "DailyTaxRate",
        label = "Daily Tax Rate",
        options =   {
                        {description = "1%", data = 0.01},
                        {description = "2%", data = 0.02},
                        {description = "5%", data = 0.05},
                        {description = "10%", data = 0.10},
                    },
        default = 0.05,
    },
    {
        name = "InitialCoins",
        label = "Initial Coins",
        options =   {
                        {description = "100", data = 100},
                        {description = "200", data = 200},
                        {description = "500", data = 500},
                        {description = "1000", data = 1000},
                    },
        default = 200,
    },
    {
        name = "MaxCoins",
        label = "Maximum Coins",
        options =   {
                        {description = "100,000", data = 100000},
                        {description = "500,000", data = 500000},
                        {description = "999,999", data = 999999},
                        {description = "9,999,999", data = 9999999},
                    },
        default = 999999,
    },
    {
        name = "InitialLevel",
        label = "Initial Level",
        options =   {
                        {description = "1", data = 1},
                        {description = "2", data = 2},
                        {description = "3", data = 3},
                    },
        default = 1,
    },
    {
        name = "PreciousRefreshDays",
        label = "Rare Items Refresh Days",
        options =   {
                        {description = "1 day", data = 1},
                        {description = "2 days", data = 2},
                        {description = "3 days", data = 3},
                        {description = "5 days", data = 5},
                    },
        default = 3,
    },
    {
        name = "Disintegrate",
        label = "Allow Disintegration",
        options =   {
                        {description = "No", data = false},
                        {description = "Yes", data = true},
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
}
