class RemoveQueueFromEmailDigestAgentMemory < ActiveRecord::Migration
  def up
    Agents::EmailDigestAgent.find_each do |agent|
      agent.memory.delete("queue")
      agent.save!(validate: false)
    end
  end
end
