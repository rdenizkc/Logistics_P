trigger AccountTrigger2 on Account (after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
           AccountTrigger2Handler.afterUpdate(Trigger.newMap, Trigger.oldMap);
        }
    }
}