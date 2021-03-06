function Update-JiraStatusCategories {
    [CmdletBinding()]
    param (
        # The ID value of the refresh underway
        [Parameter(Mandatory,Position=0)]
        [int]
        $RefreshId,

        # The sql instance to update data in
        [Parameter(Mandatory,Position=1)]
        [string]
        $SqlInstance,

        # The sql database to update data in
        [Parameter(Mandatory,Position=2)]
        [string]
        $SqlDatabase,

        # The schema to use when updating data
        [Parameter(Position=3)]
        [string]
        $SchemaName="dbo"
    )
    
    begin {
        Write-Verbose "Updating Status Categories"
        $tableName = "tbl_stg_Jira_Status_Category"
        $categories = @()
    }
    
    process {
        Write-Verbose "Getting Status Categories"
        $categories += (Invoke-JiraGetAllStatusCategories) | Read-JiraStatusCategory -RefreshId $RefreshId
    }
    
    end {
        Write-Verbose "Writing Status Categories to staging table"
        $categories | Write-SqlTableData -ServerInstance $SqlInstance -DatabaseName $SqlDatabase -SchemaName $SchemaName -TableName $tableName
    }
}