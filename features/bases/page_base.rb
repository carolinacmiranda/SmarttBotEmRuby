require_relative '../support/report_helper'

class PageBase < SitePrism::Page

    def click(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).click
        ReportHelper.register_event
    end

    def double_click(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).double_click
        ReportHelper.register_event
    end

    def send_keys(simbolo_elemento, texto)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).set texto
        ReportHelper.register_event
    end

    def send_keys_sem_espera_por_visibilidade(simbolo_elemento, texto)
        eval(simbolo_elemento.to_s).set texto
        ReportHelper.register_event
    end

    def clear(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).native.clear
        ReportHelper.register_event
    end

    def mouse_over(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).hover
    end

    def get_text(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        texto = eval(simbolo_elemento.to_s).text
        ReportHelper.register_event
        texto
    end

    def get_value(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        texto = eval(simbolo_elemento.to_s)['value']
        ReportHelper.register_event
        texto
    end

    def espera_elemento_visivel(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
    end

    def elemento_visivel?(simbolo_elemento)
        begin 
            eval("wait_until_#{simbolo_elemento}_visible")
            return true
        rescue 
            return false
        end 
    end

    def hit_enter(simbolo_elemento)
        eval("wait_until_#{simbolo_elemento}_visible")
        eval(simbolo_elemento.to_s).native.send_keys(:return)
    end

    def esperar_elemento_parar simboloElemento, intervalo: 0
        elemento = eval(simboloElemento.to_s)
        posicaoAntiga = -1
        tempoInicial = Time.now
        while (Time.now - tempoInicial) < TIMEOUT_PADRAO.to_f do
            posicao = elemento.evaluate_script("this.getBoundingClientRect().y;")
            if posicao == posicaoAntiga
                break                
            else
                posicaoAntiga = posicao
                sleep intervalo
            end
        end
    end

    def scroll_to(simboloElemento)
        script = <<-JS
            arguments[0].scrollIntoView(true);
        JS

        Capybara.current_session.driver.browser.execute_script(script, eval(simboloElemento.to_s).native)
    end

    def esperar_elemento_ter_valor simbolo_elemento, valor_esperado, limite: TIMEOUT_PADRAO.to_f
        eval("wait_until_#{simbolo_elemento}_visible")
        tempoInicial = Time.now
        while (Time.now - tempoInicial) < limite do
            valor_atual = get_value simbolo_elemento
            if valor_atual == valor_esperado
                break
            end
        end
    end

    def esperar_elemento_ter_text(simbolo_elemento, texto_esperado)
        eval("wait_until_#{simbolo_elemento}_visible")
        tempoInicial = Time.now
        while (Time.now - tempoInicial) < TIMEOUT_PADRAO.to_f do
            texto_atual = get_text simbolo_elemento
            if texto_atual == texto_esperado
                break
            end
        end
    end

    def drag_and_drop simbolo_elemento_drag, simbolo_elemento_drop
        eval(simbolo_elemento_drag.to_s).drag_to eval(simbolo_elemento_drop.to_s)
    end

end