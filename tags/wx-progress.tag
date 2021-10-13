wx-progress
    .progress
        .cancel(if="{ opts.oncancel }", onclick="{ opts.oncancel }")
        .bar
            .percent(style="width: { opts.percent * 100 }%")

    script(type="text/es6").
        var tag = this;

    style(scoped).
        .progress {
            padding: 0 15px;
        }

        .cancel {
            float: right;
        }

        .cancel:before {
            color: #F43530;
            font-size: 22px;
            font-family: weui;
            content: '\EA0D';
        }

        .bar {
            width: 100%;
            background-color: #EBEBEB;
            height: 3px;
            -webkit-box-flex: 1;
                -webkit-flex: 1;
                    -ms-flex: 1;
                        flex: 1;
        }

        .percent {
            height: 100%;
            background-color: #09BB07;
        }
