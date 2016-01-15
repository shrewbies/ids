class AddSnorbyAlerts < ActiveRecord::Migration
  def change
    create_table :idsalerts do |t|
      t.integer :sid
      t.integer :cid
      t.string :signisture
      t.integer :signature_gen
      t.integer :signature_id
      t.integer :signature_rev
      t.timestamps
      t.integer :unified_event_id
      t.integer :unified_event_ref
      t.integer :unified_ref_time
      t.integer :priority
      t.string :class
      t.integer :status
      t.integer :src_ip
      t.integer :dst_ip
      t.integer :src_port
      t.integer :dst_port
      t.integer :icmp_type
      t.integer :icmp_code
      t.integer :ip_proto
      t.integer :ip_ver
      t.integer :ip_hlen
      t.integer :ip_tos
      t.integer :ip_len
      t.integer :ip_id
      t.integer :ip_flags
      t.integer :ip_off
      t.integer :ip_ttl
      t.integer :ip_csum
      t.timestamp :last_modified
      t.integer :last_uid
     
    end
  end
end
