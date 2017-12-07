hiera_include('classes', '')
node 'iscsi.agent1.com', 'agent.server.com' {  
           include iscsi
} 

