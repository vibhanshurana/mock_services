class MockServicesController < ApplicationController
  def index
    @mock_services = MockService.all
  end

  def show
    @mock_service = MockService.find(params[:id])
  end

  def new
    @mock_service = MockService.new
  end

  def edit
    @mock_service = MockService.find(params[:id])
  end

  def create
    @mock_service = MockService.new(service_params)
    @mock_service.request = @mock_service.request.to_json
    @mock_service.response = @mock_service.response.to_json

    if @mock_service.save
      redirect_to @mock_service
    else
      render 'new'
    end
  end

  def update
    @mock_service = MockService.find(params[:id])

    if @mock_service.update(service_params)
      redirect_to @mock_service
    else
      render 'edit'
    end
  end

  def destroy
    @mock_service = MockService.find(params[:id])
    @mock_service.destroy
   
    redirect_to mock_services_path
  end

  private

  def service_params
    params.require(:mock_service).permit(:title, :url, :service_provider, :request, :response, :code)
  end
end
