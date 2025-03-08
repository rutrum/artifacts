# Artifacts API Bash client

## Overview

This is a Bash client script for accessing Artifacts API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**accountAccountsAccountGet**](docs/AccountsApi.md#accountaccountsaccountget) | **GET** /accounts/{account} | Get Account
*AccountsApi* | [**accountAccountsCreatePost**](docs/AccountsApi.md#accountaccountscreatepost) | **POST** /accounts/create | Create Account
*AccountsApi* | [**accountAchievementsAccountsAccountAchievementsGet**](docs/AccountsApi.md#accountachievementsaccountsaccountachievementsget) | **GET** /accounts/{account}/achievements | Get Account Achievements
*AchievementsApi* | [**achievementAchievementsCodeGet**](docs/AchievementsApi.md#achievementachievementscodeget) | **GET** /achievements/{code} | Get Achievement
*AchievementsApi* | [**allAchievementsAchievementsGet**](docs/AchievementsApi.md#allachievementsachievementsget) | **GET** /achievements | Get All Achievements
*BadgesApi* | [**allBadgesBadgesGet**](docs/BadgesApi.md#allbadgesbadgesget) | **GET** /badges | Get All Badges
*BadgesApi* | [**badgeBadgesCodeGet**](docs/BadgesApi.md#badgebadgescodeget) | **GET** /badges/{code} | Get Badge
*CharactersApi* | [**characterCharactersCreatePost**](docs/CharactersApi.md#charactercharacterscreatepost) | **POST** /characters/create | Create Character
*CharactersApi* | [**characterCharactersDeletePost**](docs/CharactersApi.md#charactercharactersdeletepost) | **POST** /characters/delete | Delete Character
*CharactersApi* | [**characterCharactersNameGet**](docs/CharactersApi.md#charactercharactersnameget) | **GET** /characters/{name} | Get Character
*DefaultApi* | [**statusGet**](docs/DefaultApi.md#statusget) | **GET** / | Get Status
*EffectsApi* | [**allEffectsEffectsGet**](docs/EffectsApi.md#alleffectseffectsget) | **GET** /effects | Get All Effects
*EffectsApi* | [**effectEffectsCodeGet**](docs/EffectsApi.md#effecteffectscodeget) | **GET** /effects/{code} | Get Effect
*EventsApi* | [**allActiveEventsEventsActiveGet**](docs/EventsApi.md#allactiveeventseventsactiveget) | **GET** /events/active | Get All Active Events
*EventsApi* | [**allEventsEventsGet**](docs/EventsApi.md#alleventseventsget) | **GET** /events | Get All Events
*GrandExchangeApi* | [**geSellHistoryGrandexchangeHistoryCodeGet**](docs/GrandExchangeApi.md#gesellhistorygrandexchangehistorycodeget) | **GET** /grandexchange/history/{code} | Get Ge Sell History
*GrandExchangeApi* | [**geSellOrderGrandexchangeOrdersIdGet**](docs/GrandExchangeApi.md#gesellordergrandexchangeordersidget) | **GET** /grandexchange/orders/{id} | Get Ge Sell Order
*GrandExchangeApi* | [**geSellOrdersGrandexchangeOrdersGet**](docs/GrandExchangeApi.md#gesellordersgrandexchangeordersget) | **GET** /grandexchange/orders | Get Ge Sell Orders
*ItemsApi* | [**allItemsItemsGet**](docs/ItemsApi.md#allitemsitemsget) | **GET** /items | Get All Items
*ItemsApi* | [**itemItemsCodeGet**](docs/ItemsApi.md#itemitemscodeget) | **GET** /items/{code} | Get Item
*LeaderboardApi* | [**accountsLeaderboardLeaderboardAccountsGet**](docs/LeaderboardApi.md#accountsleaderboardleaderboardaccountsget) | **GET** /leaderboard/accounts | Get Accounts Leaderboard
*LeaderboardApi* | [**charactersLeaderboardLeaderboardCharactersGet**](docs/LeaderboardApi.md#charactersleaderboardleaderboardcharactersget) | **GET** /leaderboard/characters | Get Characters Leaderboard
*MapsApi* | [**allMapsMapsGet**](docs/MapsApi.md#allmapsmapsget) | **GET** /maps | Get All Maps
*MapsApi* | [**mapMapsXYGet**](docs/MapsApi.md#mapmapsxyget) | **GET** /maps/{x}/{y} | Get Map
*MonstersApi* | [**allMonstersMonstersGet**](docs/MonstersApi.md#allmonstersmonstersget) | **GET** /monsters | Get All Monsters
*MonstersApi* | [**monsterMonstersCodeGet**](docs/MonstersApi.md#monstermonsterscodeget) | **GET** /monsters/{code} | Get Monster
*MyAccountApi* | [**accountDetailsMyDetailsGet**](docs/MyAccountApi.md#accountdetailsmydetailsget) | **GET** /my/details | Get Account Details
*MyAccountApi* | [**bankDetailsMyBankGet**](docs/MyAccountApi.md#bankdetailsmybankget) | **GET** /my/bank | Get Bank Details
*MyAccountApi* | [**bankItemsMyBankItemsGet**](docs/MyAccountApi.md#bankitemsmybankitemsget) | **GET** /my/bank/items | Get Bank Items
*MyAccountApi* | [**geSellHistoryMyGrandexchangeHistoryGet**](docs/MyAccountApi.md#gesellhistorymygrandexchangehistoryget) | **GET** /my/grandexchange/history | Get Ge Sell History
*MyAccountApi* | [**geSellOrdersMyGrandexchangeOrdersGet**](docs/MyAccountApi.md#gesellordersmygrandexchangeordersget) | **GET** /my/grandexchange/orders | Get Ge Sell Orders
*MyAccountApi* | [**passwordMyChangePasswordPost**](docs/MyAccountApi.md#passwordmychangepasswordpost) | **POST** /my/change_password | Change Password
*MyCharactersApi* | [**acceptNewTaskMyNameActionTaskNewPost**](docs/MyCharactersApi.md#acceptnewtaskmynameactiontasknewpost) | **POST** /my/{name}/action/task/new | Action Accept New Task
*MyCharactersApi* | [**allCharactersLogsMyLogsGet**](docs/MyCharactersApi.md#allcharacterslogsmylogsget) | **GET** /my/logs | Get All Characters Logs
*MyCharactersApi* | [**buyBankExpansionMyNameActionBankBuyExpansionPost**](docs/MyCharactersApi.md#buybankexpansionmynameactionbankbuyexpansionpost) | **POST** /my/{name}/action/bank/buy_expansion | Action Buy Bank Expansion
*MyCharactersApi* | [**completeTaskMyNameActionTaskCompletePost**](docs/MyCharactersApi.md#completetaskmynameactiontaskcompletepost) | **POST** /my/{name}/action/task/complete | Action Complete Task
*MyCharactersApi* | [**craftingMyNameActionCraftingPost**](docs/MyCharactersApi.md#craftingmynameactioncraftingpost) | **POST** /my/{name}/action/crafting | Action Crafting
*MyCharactersApi* | [**deleteItemMyNameActionDeletePost**](docs/MyCharactersApi.md#deleteitemmynameactiondeletepost) | **POST** /my/{name}/action/delete | Action Delete Item
*MyCharactersApi* | [**depositBankGoldMyNameActionBankDepositGoldPost**](docs/MyCharactersApi.md#depositbankgoldmynameactionbankdepositgoldpost) | **POST** /my/{name}/action/bank/deposit/gold | Action Deposit Bank Gold
*MyCharactersApi* | [**depositBankMyNameActionBankDepositPost**](docs/MyCharactersApi.md#depositbankmynameactionbankdepositpost) | **POST** /my/{name}/action/bank/deposit | Action Deposit Bank
*MyCharactersApi* | [**equipItemMyNameActionEquipPost**](docs/MyCharactersApi.md#equipitemmynameactionequippost) | **POST** /my/{name}/action/equip | Action Equip Item
*MyCharactersApi* | [**fightMyNameActionFightPost**](docs/MyCharactersApi.md#fightmynameactionfightpost) | **POST** /my/{name}/action/fight | Action Fight
*MyCharactersApi* | [**gatheringMyNameActionGatheringPost**](docs/MyCharactersApi.md#gatheringmynameactiongatheringpost) | **POST** /my/{name}/action/gathering | Action Gathering
*MyCharactersApi* | [**geBuyItemMyNameActionGrandexchangeBuyPost**](docs/MyCharactersApi.md#gebuyitemmynameactiongrandexchangebuypost) | **POST** /my/{name}/action/grandexchange/buy | Action Ge Buy Item
*MyCharactersApi* | [**geCancelSellOrderMyNameActionGrandexchangeCancelPost**](docs/MyCharactersApi.md#gecancelsellordermynameactiongrandexchangecancelpost) | **POST** /my/{name}/action/grandexchange/cancel | Action Ge Cancel Sell Order
*MyCharactersApi* | [**geCreateSellOrderMyNameActionGrandexchangeSellPost**](docs/MyCharactersApi.md#gecreatesellordermynameactiongrandexchangesellpost) | **POST** /my/{name}/action/grandexchange/sell | Action Ge Create Sell Order
*MyCharactersApi* | [**moveMyNameActionMovePost**](docs/MyCharactersApi.md#movemynameactionmovepost) | **POST** /my/{name}/action/move | Action Move
*MyCharactersApi* | [**myCharactersMyCharactersGet**](docs/MyCharactersApi.md#mycharactersmycharactersget) | **GET** /my/characters | Get My Characters
*MyCharactersApi* | [**npcBuyItemMyNameActionNpcBuyPost**](docs/MyCharactersApi.md#npcbuyitemmynameactionnpcbuypost) | **POST** /my/{name}/action/npc/buy | Action Npc Buy Item
*MyCharactersApi* | [**npcSellItemMyNameActionNpcSellPost**](docs/MyCharactersApi.md#npcsellitemmynameactionnpcsellpost) | **POST** /my/{name}/action/npc/sell | Action Npc Sell Item
*MyCharactersApi* | [**recyclingMyNameActionRecyclingPost**](docs/MyCharactersApi.md#recyclingmynameactionrecyclingpost) | **POST** /my/{name}/action/recycling | Action Recycling
*MyCharactersApi* | [**restMyNameActionRestPost**](docs/MyCharactersApi.md#restmynameactionrestpost) | **POST** /my/{name}/action/rest | Action Rest
*MyCharactersApi* | [**taskCancelMyNameActionTaskCancelPost**](docs/MyCharactersApi.md#taskcancelmynameactiontaskcancelpost) | **POST** /my/{name}/action/task/cancel | Action Task Cancel
*MyCharactersApi* | [**taskExchangeMyNameActionTaskExchangePost**](docs/MyCharactersApi.md#taskexchangemynameactiontaskexchangepost) | **POST** /my/{name}/action/task/exchange | Action Task Exchange
*MyCharactersApi* | [**taskTradeMyNameActionTaskTradePost**](docs/MyCharactersApi.md#tasktrademynameactiontasktradepost) | **POST** /my/{name}/action/task/trade | Action Task Trade
*MyCharactersApi* | [**unequipItemMyNameActionUnequipPost**](docs/MyCharactersApi.md#unequipitemmynameactionunequippost) | **POST** /my/{name}/action/unequip | Action Unequip Item
*MyCharactersApi* | [**useItemMyNameActionUsePost**](docs/MyCharactersApi.md#useitemmynameactionusepost) | **POST** /my/{name}/action/use | Action Use Item
*MyCharactersApi* | [**withdrawBankGoldMyNameActionBankWithdrawGoldPost**](docs/MyCharactersApi.md#withdrawbankgoldmynameactionbankwithdrawgoldpost) | **POST** /my/{name}/action/bank/withdraw/gold | Action Withdraw Bank Gold
*MyCharactersApi* | [**withdrawBankMyNameActionBankWithdrawPost**](docs/MyCharactersApi.md#withdrawbankmynameactionbankwithdrawpost) | **POST** /my/{name}/action/bank/withdraw | Action Withdraw Bank
*NPCsApi* | [**allNpcsNpcsGet**](docs/NPCsApi.md#allnpcsnpcsget) | **GET** /npcs | Get All Npcs
*NPCsApi* | [**npcItemsNpcsCodeItemsGet**](docs/NPCsApi.md#npcitemsnpcscodeitemsget) | **GET** /npcs/{code}/items | Get Npc Items
*NPCsApi* | [**npcNpcsCodeGet**](docs/NPCsApi.md#npcnpcscodeget) | **GET** /npcs/{code} | Get Npc
*ResourcesApi* | [**allResourcesResourcesGet**](docs/ResourcesApi.md#allresourcesresourcesget) | **GET** /resources | Get All Resources
*ResourcesApi* | [**resourceResourcesCodeGet**](docs/ResourcesApi.md#resourceresourcescodeget) | **GET** /resources/{code} | Get Resource
*TasksApi* | [**allTasksRewardsTasksRewardsGet**](docs/TasksApi.md#alltasksrewardstasksrewardsget) | **GET** /tasks/rewards | Get All Tasks Rewards
*TasksApi* | [**allTasksTasksListGet**](docs/TasksApi.md#alltaskstaskslistget) | **GET** /tasks/list | Get All Tasks
*TasksApi* | [**taskTasksListCodeGet**](docs/TasksApi.md#tasktaskslistcodeget) | **GET** /tasks/list/{code} | Get Task
*TasksApi* | [**tasksRewardTasksRewardsCodeGet**](docs/TasksApi.md#tasksrewardtasksrewardscodeget) | **GET** /tasks/rewards/{code} | Get Tasks Reward
*TokenApi* | [**tokenTokenPost**](docs/TokenApi.md#tokentokenpost) | **POST** /token | Generate Token


## Documentation For Models

 - [AccountAchievementSchema](docs/AccountAchievementSchema.md)
 - [AccountDetails](docs/AccountDetails.md)
 - [AccountDetailsSchema](docs/AccountDetailsSchema.md)
 - [AccountLeaderboardSchema](docs/AccountLeaderboardSchema.md)
 - [AccountLeaderboardType](docs/AccountLeaderboardType.md)
 - [AccountStatus](docs/AccountStatus.md)
 - [AchievementResponseSchema](docs/AchievementResponseSchema.md)
 - [AchievementRewardsSchema](docs/AchievementRewardsSchema.md)
 - [AchievementSchema](docs/AchievementSchema.md)
 - [AchievementType](docs/AchievementType.md)
 - [ActionType](docs/ActionType.md)
 - [ActiveEventSchema](docs/ActiveEventSchema.md)
 - [AddAccountSchema](docs/AddAccountSchema.md)
 - [AddCharacterSchema](docs/AddCharacterSchema.md)
 - [AnnouncementSchema](docs/AnnouncementSchema.md)
 - [BadgeConditionSchema](docs/BadgeConditionSchema.md)
 - [BadgeResponseSchema](docs/BadgeResponseSchema.md)
 - [BadgeSchema](docs/BadgeSchema.md)
 - [BankExtensionSchema](docs/BankExtensionSchema.md)
 - [BankExtensionTransactionResponseSchema](docs/BankExtensionTransactionResponseSchema.md)
 - [BankExtensionTransactionSchema](docs/BankExtensionTransactionSchema.md)
 - [BankGoldTransactionResponseSchema](docs/BankGoldTransactionResponseSchema.md)
 - [BankGoldTransactionSchema](docs/BankGoldTransactionSchema.md)
 - [BankItemTransactionResponseSchema](docs/BankItemTransactionResponseSchema.md)
 - [BankItemTransactionSchema](docs/BankItemTransactionSchema.md)
 - [BankResponseSchema](docs/BankResponseSchema.md)
 - [BankSchema](docs/BankSchema.md)
 - [BlockedHitsSchema](docs/BlockedHitsSchema.md)
 - [ChangePassword](docs/ChangePassword.md)
 - [CharacterFightDataSchema](docs/CharacterFightDataSchema.md)
 - [CharacterFightResponseSchema](docs/CharacterFightResponseSchema.md)
 - [CharacterLeaderboardSchema](docs/CharacterLeaderboardSchema.md)
 - [CharacterLeaderboardType](docs/CharacterLeaderboardType.md)
 - [CharacterMovementDataSchema](docs/CharacterMovementDataSchema.md)
 - [CharacterMovementResponseSchema](docs/CharacterMovementResponseSchema.md)
 - [CharacterResponseSchema](docs/CharacterResponseSchema.md)
 - [CharacterRestDataSchema](docs/CharacterRestDataSchema.md)
 - [CharacterRestResponseSchema](docs/CharacterRestResponseSchema.md)
 - [CharacterSchema](docs/CharacterSchema.md)
 - [CharacterSkin](docs/CharacterSkin.md)
 - [CooldownSchema](docs/CooldownSchema.md)
 - [CraftSchema](docs/CraftSchema.md)
 - [CraftSkill](docs/CraftSkill.md)
 - [CraftingSchema](docs/CraftingSchema.md)
 - [DataPageAccountAchievementSchema](docs/DataPageAccountAchievementSchema.md)
 - [DataPageAccountLeaderboardSchema](docs/DataPageAccountLeaderboardSchema.md)
 - [DataPageAchievementSchema](docs/DataPageAchievementSchema.md)
 - [DataPageActiveEventSchema](docs/DataPageActiveEventSchema.md)
 - [DataPageBadgeSchema](docs/DataPageBadgeSchema.md)
 - [DataPageCharacterLeaderboardSchema](docs/DataPageCharacterLeaderboardSchema.md)
 - [DataPageDropRateSchema](docs/DataPageDropRateSchema.md)
 - [DataPageEffectSchema](docs/DataPageEffectSchema.md)
 - [DataPageEventSchema](docs/DataPageEventSchema.md)
 - [DataPageGEOrderSchema](docs/DataPageGEOrderSchema.md)
 - [DataPageGeOrderHistorySchema](docs/DataPageGeOrderHistorySchema.md)
 - [DataPageItemSchema](docs/DataPageItemSchema.md)
 - [DataPageLogSchema](docs/DataPageLogSchema.md)
 - [DataPageMapSchema](docs/DataPageMapSchema.md)
 - [DataPageMonsterSchema](docs/DataPageMonsterSchema.md)
 - [DataPageNPCItem](docs/DataPageNPCItem.md)
 - [DataPageNPCSchema](docs/DataPageNPCSchema.md)
 - [DataPageResourceSchema](docs/DataPageResourceSchema.md)
 - [DataPageSimpleItemSchema](docs/DataPageSimpleItemSchema.md)
 - [DataPageTaskFullSchema](docs/DataPageTaskFullSchema.md)
 - [DeleteCharacterSchema](docs/DeleteCharacterSchema.md)
 - [DeleteItemResponseSchema](docs/DeleteItemResponseSchema.md)
 - [DeleteItemSchema](docs/DeleteItemSchema.md)
 - [DepositWithdrawGoldSchema](docs/DepositWithdrawGoldSchema.md)
 - [DestinationSchema](docs/DestinationSchema.md)
 - [DropRateSchema](docs/DropRateSchema.md)
 - [DropSchema](docs/DropSchema.md)
 - [EffectResponseSchema](docs/EffectResponseSchema.md)
 - [EffectSchema](docs/EffectSchema.md)
 - [EffectSubtype](docs/EffectSubtype.md)
 - [EffectType](docs/EffectType.md)
 - [EquipRequestSchema](docs/EquipRequestSchema.md)
 - [EquipSchema](docs/EquipSchema.md)
 - [EquipmentResponseSchema](docs/EquipmentResponseSchema.md)
 - [EventContentSchema](docs/EventContentSchema.md)
 - [EventMapSchema](docs/EventMapSchema.md)
 - [EventSchema](docs/EventSchema.md)
 - [FightResult](docs/FightResult.md)
 - [FightSchema](docs/FightSchema.md)
 - [GEBuyOrderSchema](docs/GEBuyOrderSchema.md)
 - [GECancelOrderSchema](docs/GECancelOrderSchema.md)
 - [GECreateOrderTransactionResponseSchema](docs/GECreateOrderTransactionResponseSchema.md)
 - [GEOrderCreatedSchema](docs/GEOrderCreatedSchema.md)
 - [GEOrderCreationrSchema](docs/GEOrderCreationrSchema.md)
 - [GEOrderReponseSchema](docs/GEOrderReponseSchema.md)
 - [GEOrderSchema](docs/GEOrderSchema.md)
 - [GEOrderTransactionSchema](docs/GEOrderTransactionSchema.md)
 - [GETransactionListSchema](docs/GETransactionListSchema.md)
 - [GETransactionResponseSchema](docs/GETransactionResponseSchema.md)
 - [GETransactionSchema](docs/GETransactionSchema.md)
 - [GatheringSkill](docs/GatheringSkill.md)
 - [GeOrderHistorySchema](docs/GeOrderHistorySchema.md)
 - [GoldSchema](docs/GoldSchema.md)
 - [HTTPValidationError](docs/HTTPValidationError.md)
 - [InventorySlot](docs/InventorySlot.md)
 - [ItemResponseSchema](docs/ItemResponseSchema.md)
 - [ItemSchema](docs/ItemSchema.md)
 - [ItemSlot](docs/ItemSlot.md)
 - [ItemType](docs/ItemType.md)
 - [LogSchema](docs/LogSchema.md)
 - [LogType](docs/LogType.md)
 - [MapContentSchema](docs/MapContentSchema.md)
 - [MapContentType](docs/MapContentType.md)
 - [MapResponseSchema](docs/MapResponseSchema.md)
 - [MapSchema](docs/MapSchema.md)
 - [MonsterResponseSchema](docs/MonsterResponseSchema.md)
 - [MonsterSchema](docs/MonsterSchema.md)
 - [MyAccountDetails](docs/MyAccountDetails.md)
 - [MyAccountDetailsSchema](docs/MyAccountDetailsSchema.md)
 - [MyCharactersListSchema](docs/MyCharactersListSchema.md)
 - [NPCItem](docs/NPCItem.md)
 - [NPCResponseSchema](docs/NPCResponseSchema.md)
 - [NPCSchema](docs/NPCSchema.md)
 - [NPCType](docs/NPCType.md)
 - [NpcItemTransactionSchema](docs/NpcItemTransactionSchema.md)
 - [NpcMerchantBuySchema](docs/NpcMerchantBuySchema.md)
 - [NpcMerchantTransactionResponseSchema](docs/NpcMerchantTransactionResponseSchema.md)
 - [NpcMerchantTransactionSchema](docs/NpcMerchantTransactionSchema.md)
 - [RecyclingDataSchema](docs/RecyclingDataSchema.md)
 - [RecyclingItemsSchema](docs/RecyclingItemsSchema.md)
 - [RecyclingResponseSchema](docs/RecyclingResponseSchema.md)
 - [RecyclingSchema](docs/RecyclingSchema.md)
 - [ResourceResponseSchema](docs/ResourceResponseSchema.md)
 - [ResourceSchema](docs/ResourceSchema.md)
 - [ResponseSchema](docs/ResponseSchema.md)
 - [RewardDataResponseSchema](docs/RewardDataResponseSchema.md)
 - [RewardDataSchema](docs/RewardDataSchema.md)
 - [RewardResponseSchema](docs/RewardResponseSchema.md)
 - [RewardsSchema](docs/RewardsSchema.md)
 - [SimpleEffectSchema](docs/SimpleEffectSchema.md)
 - [SimpleItemSchema](docs/SimpleItemSchema.md)
 - [Skill](docs/Skill.md)
 - [SkillDataSchema](docs/SkillDataSchema.md)
 - [SkillInfoSchema](docs/SkillInfoSchema.md)
 - [SkillResponseSchema](docs/SkillResponseSchema.md)
 - [StatusResponseSchema](docs/StatusResponseSchema.md)
 - [StatusSchema](docs/StatusSchema.md)
 - [TaskCancelledResponseSchema](docs/TaskCancelledResponseSchema.md)
 - [TaskCancelledSchema](docs/TaskCancelledSchema.md)
 - [TaskDataSchema](docs/TaskDataSchema.md)
 - [TaskFullResponseSchema](docs/TaskFullResponseSchema.md)
 - [TaskFullSchema](docs/TaskFullSchema.md)
 - [TaskResponseSchema](docs/TaskResponseSchema.md)
 - [TaskSchema](docs/TaskSchema.md)
 - [TaskTradeDataSchema](docs/TaskTradeDataSchema.md)
 - [TaskTradeResponseSchema](docs/TaskTradeResponseSchema.md)
 - [TaskTradeSchema](docs/TaskTradeSchema.md)
 - [TaskType](docs/TaskType.md)
 - [TokenResponseSchema](docs/TokenResponseSchema.md)
 - [UnequipSchema](docs/UnequipSchema.md)
 - [UseItemResponseSchema](docs/UseItemResponseSchema.md)
 - [UseItemSchema](docs/UseItemSchema.md)
 - [ValidationError](docs/ValidationError.md)
 - [ValidationErrorLocInner](docs/ValidationErrorLocInner.md)


## Documentation For Authorization


## JWTBearer


- **Type**: HTTP Bearer Token authentication

## HTTPBasic


- **Type**: HTTP basic authentication

