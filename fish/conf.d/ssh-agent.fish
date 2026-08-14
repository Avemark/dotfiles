if status is-interactive
    set -l ssh_env "$HOME/.ssh/agent.env"

    function start_agent --argument-names ssh_env
        echo "Starting new ssh-agent..."
        ssh-agent -c > $ssh_env
        chmod 600 $ssh_env
        source $ssh_env > /dev/null
    end

    if test -f $ssh_env
        source $ssh_env > /dev/null

        # Check the agent is actually alive
        if not kill -0 $SSH_AGENT_PID 2>/dev/null
            start_agent $ssh_env
        end
    else
        start_agent $ssh_env
    end

    # Load your keys if not already loaded
    ssh-add -l > /dev/null 2>&1
    if test $status -eq 1
        ssh-add ~/.ssh/id_ed25519 2>/dev/null
        # add more ssh-add lines here for additional keys
    end
end
