<?php

namespace App\Tenant;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use App\Models\Cliente;

class ManagerTenant
{
    public function setConnection(Cliente $cliente)
    {
        DB::purge('tenant');

        config()->set('database.connections.tenant.host', $cliente->bd_hostname);
        config()->set('database.connections.tenant.database', $cliente->bd_database);
        config()->set('database.connections.tenant.username', $cliente->bd_username);
        config()->set('database.connections.tenant.password', $cliente->bd_password);
        //config()->set('database.connections.tenant.password', '');

        DB::reconnect('tenant');

        Schema::connection('tenant')->getConnection()->reconnect();
    }

    public function domainIsMain()
    {
        return request()->getHost()  == env('LOCAL_ADM');
        //return request()->getHost()  == config('tenant.domain_main');
    }

    public function setFileSystems(Cliente $cliente)
    {
        $uuid = $cliente->uuid;
        config()->set([
            'filesystems.disks.tenant.root' => config('filesystems.disks.tenant.root') . "/{$uuid}",
            'filesystems.disks.tenant.url' => config('filesystems.disks.tenant.url') . "/{$uuid}",
        ]);
        //dd(config('filesystems.disks.local'));
    }
}
