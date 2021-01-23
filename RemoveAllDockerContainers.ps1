 # save containers ids into array (--quiet mean return just containers ids)
    $containersIds = (docker ps --all --quiet); 
    if ($containersIds.Count -gt 0)
    {
        Write-Host ("removing docker containers: ")
        # stop all containers
        docker stop $containersIds
        # remove all containers
        docker rm $containersIds
    }
