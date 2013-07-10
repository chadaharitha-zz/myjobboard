class ApplyonlinesController < ApplicationController

   def index
    @AppForm = LoadApplicationFormForJob(:JobDID => params[:jobDID])
   end

  def applyfinish
    xml_body = buildinternaljob_xml(params)   
    @AppFinish = ApplyForInternalJob(xml_body)
    @ApplyJobTitle = params[:key]
  end


  def buildinternaljob_xml(options)
    xml =     "<RequestApplication>"
    xml +=       "<DeveloperKey>WDHQ4VK5ZGXFY0PDH094</DeveloperKey>"
    xml +=       "<JobDID>#{options[:jobdid]}</JobDID>"
    xml +=       "<Test>true</Test>"
    xml +=       "<SiteID />"
    xml +=       "<CoBrand />"
    xml +=       "<Responses>"

    params.each do |key,value|
      xml +=         "<Response>"
      xml +=          "<QuestionID>#{key}</QuestionID>"
      xml +=          "<ResponseText>#{value}</ResponseText>"
      xml +=        "</Response>"
    end

    xml +=      "</Responses>"
    xml +=    "</RequestApplication>"
    xml

    end


end

