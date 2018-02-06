module Capuchin
  class Send
    def initialize(email, options, api = Capuchin::MailChimp.new)
      @email = email
      @options = options

      @api = api
    end

    def send
      result = @api.send(@email, list_id, template_id, from_name, from_email)

      if result['complete']
        "#{@email.subject} was sent."
      else
        raise "Something went wrong!"
      end
    end

    private
      def list_id
        @options['list_id']
      end

      def template_id
        @options['template_id']
      end

      def from_name
        @options['from_name']
      end

      def from_email
        @options['from_email']
      end

  end
end
