class MonitController < ApplicationController

  before_action :get_categories, only: [:ammount_contrib,
                                        :ammount_per_service,
                                        :reduction_percentual,
                                        :total_keeped ]

  def index
  end

  def ammount_contrib
    gon.series = [{
      name: 'Contribuintes Atendidos',
      data: [49, 71, 106, 129, 454],
      dataLabels: get_datalabel_config,
      color: '#008783'
    }]
  end

  def ammount_per_service
    gon.series     = [
      { name: 'Dívida Ativa - SEFIN', data: [49.9, 71.5, 106.4, 129.2], dataLabels: get_datalabel_config },
      { name: 'Dívida Ativa - PGM',   data: [83.6, 78.8, 98.5, 93.4]  , dataLabels: get_datalabel_config },
      { name: 'Cadastro ISS',         data: [48.9, 38.8, 39.3, 41.4]  , dataLabels: get_datalabel_config },
      { name: 'Cadastro IPTU',        data: [42.4, 33.2, 34.5, 39.7]  , dataLabels: get_datalabel_config }
    ]
  end

  def reduction_percentual
    gon.series = [{
      name: I18n.t("chart.reduction_percentual"),
      data: [49, 71, 106, 129, 454],
      dataLabels: get_datalabel_config,
      color: '#008783'
    }]
  end

  def total_keeped
    gon.series = [{

    }]
  end

  def biggest_dealers
  end

  private

  def get_categories
    gon.categories = [ '13/08 ', '14/08', '15/08', '16/08', 'Total' ]
  end

  def get_datalabel_config
    data = {
      dataLabels: {
          enabled: true,
          rotation: 0,
          color: '#000000',
          backgroundColor: '#FFFFFF',
          align: 'center',
          x: 4,
          y: 0,
          style: {
            fontSize: '12px',
            fontFamily: 'Verdana, sans-serif'
          }
      }
    }
    data[:dataLabels]
  end

end
