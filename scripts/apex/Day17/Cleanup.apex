// Clean up all the Opportunity Records created today 

delete[SELECT Id from Opportunity Where CreatedDate = TODAY];