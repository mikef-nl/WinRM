=begin
  This file is part of WinRM; the Ruby library for Microsoft WinRM.

  Copyright © 2010 Dan Wanek <dan.wanek@gmail.com>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
=end

module WinRM
  # Generic WinRM SOAP Error
  class WinRMWebServiceError < StandardError
  end

  # Authorization Error
  class WinRMAuthorizationError < StandardError
  end

  # A Fault returned in the SOAP response. The XML node is a WSManFault
  class WinRMWSManFault < StandardError; end

  # Bad HTTP Transport
  class WinRMHTTPTransportError < StandardError
    attr_reader :response_code

    def initialize(msg, response_code)
      @response_code = response_code
      msg << " (#{response_code})."
      super(msg)
    end
  end
end # WinRM

