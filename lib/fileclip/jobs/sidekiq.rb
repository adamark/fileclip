module FileClip
  module Jobs
    class Sidekiq
      include ::Sidekiq::Worker if defined?(::Sidekiq::Worker)

      def perform(instance_klass, instance_id, attachment_name)
        FileClip.process(instance_klass, instance_id, attachment_name)
      end
    end
  end
end