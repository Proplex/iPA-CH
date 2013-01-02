bind(player_join, null, null, @event,
    set_timeout(1000, closure(
        assign(@mail, _player_mail(@event[player]))
        
        if(is_null(@mail) || length(@mail) == 0,
            die(tmsg(@event[player], concat(color(yellow), 'You have', color(red), ' no', color(yellow), ' new mail.')))
        , # else
            tmsg(@event[player], concat(color(yellow), 'You have mail! Type', color(red), ' `/mail inbox`', color(yellow), ' to see.'))
        )
    ))
)