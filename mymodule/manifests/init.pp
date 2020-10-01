class mymodule {
file { "/root/.aws/credentials":
        mode => "0600",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/mymodule/credentials',
    }
file { "/root/.aws/config":
        mode => "0600",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/mymodule/config',
    }

}
