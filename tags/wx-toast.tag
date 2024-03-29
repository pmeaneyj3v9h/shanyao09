wx-toast
    .mask
        .toast
            .sign(class="{ opts.sign }")
                .loading-leaf.loading-leaf-0
                .loading-leaf.loading-leaf-1
                .loading-leaf.loading-leaf-2
                .loading-leaf.loading-leaf-3
                .loading-leaf.loading-leaf-4
                .loading-leaf.loading-leaf-5
                .loading-leaf.loading-leaf-6
                .loading-leaf.loading-leaf-7
                .loading-leaf.loading-leaf-8
                .loading-leaf.loading-leaf-9
                .loading-leaf.loading-leaf-10
                .loading-leaf.loading-leaf-11
            .main { opts.main }

    script(type="text/es6").
        var tag = this;

        tag.on('update', function () {
            tag.opts.sign = tag.opts.sign || 'done';
        });

        tag.on('mount', function () {
            setTimeout(function () {
                tag.unmount(true);
            }, tag.opts.timeout);
        });

    style(scoped).
        .mask {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        .toast {
            position: absolute;
            width: 7.6em;
            min-height: 7.6em;
            top: 180px;
            left: 50%;
            margin-left: -3.8em;
            background: rgba(40, 40, 40, 0.75);
            text-align: center;
            border-radius: 5px;
            color: #fff;
        }

        .sign.done {
            margin: 22px 0 0;
            display: block;
        }

        .sign.done:before {
            content: '\EA08';
            color: #fff;
            font-size: 55px;
            font-family: weui;
        }

        .main {
            margin: 0 0 15px;   
        }

        .loading + .main {
            margin-top: 64%;
            font-size: 14px;
        }

        .sign.loading {
            position: absolute;
            width: 0px;
            left: 50%;
            top: 38%;
        }

        .sign.loading .loading-leaf {
            position: absolute;
            top: -1px;
            opacity: 0.25;
        }

        .sign.loading .loading-leaf:before {
            content: " ";
            position: absolute;
            width: 8.14px;
            height: 3.08px;
            background: #d1d1d5;
            box-shadow: rgba(0, 0, 0, 0.0980392) 0 0 1px;
            border-radius: 1px;
            -webkit-transform-origin: left 50% 0;
                -ms-transform-origin: left 50% 0;
                    transform-origin: left 50% 0;
        }

        .loading-leaf-0 {
            -webkit-animation: opacity-60-25-0-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-0-12 1.25s linear infinite;
                    animation: opacity-60-25-0-12 1.25s linear infinite;
        }
        .loading-leaf-1 {
            -webkit-animation: opacity-60-25-1-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-1-12 1.25s linear infinite;
                    animation: opacity-60-25-1-12 1.25s linear infinite;
        }
        .loading-leaf-2 {
            -webkit-animation: opacity-60-25-2-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-2-12 1.25s linear infinite;
                    animation: opacity-60-25-2-12 1.25s linear infinite;
        }
        .loading-leaf-3 {
            -webkit-animation: opacity-60-25-3-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-3-12 1.25s linear infinite;
                    animation: opacity-60-25-3-12 1.25s linear infinite;
        }
        .loading-leaf-4 {
            -webkit-animation: opacity-60-25-4-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-4-12 1.25s linear infinite;
                    animation: opacity-60-25-4-12 1.25s linear infinite;
        }
        .loading-leaf-5 {
            -webkit-animation: opacity-60-25-5-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-5-12 1.25s linear infinite;
                    animation: opacity-60-25-5-12 1.25s linear infinite;
        }
        .loading-leaf-6 {
            -webkit-animation: opacity-60-25-6-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-6-12 1.25s linear infinite;
                    animation: opacity-60-25-6-12 1.25s linear infinite;
        }
        .loading-leaf-7 {
            -webkit-animation: opacity-60-25-7-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-7-12 1.25s linear infinite;
                    animation: opacity-60-25-7-12 1.25s linear infinite;
        }
        .loading-leaf-8 {
            -webkit-animation: opacity-60-25-8-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-8-12 1.25s linear infinite;
                    animation: opacity-60-25-8-12 1.25s linear infinite;
        }
        .loading-leaf-9 {
            -webkit-animation: opacity-60-25-9-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-9-12 1.25s linear infinite;
                    animation: opacity-60-25-9-12 1.25s linear infinite;
        }
        .loading-leaf-10 {
            -webkit-animation: opacity-60-25-10-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-10-12 1.25s linear infinite;
                    animation: opacity-60-25-10-12 1.25s linear infinite;
        }
        .loading-leaf-11 {
            -webkit-animation: opacity-60-25-11-12 1.25s linear infinite;
                -ms-animation: opacity-60-25-11-12 1.25s linear infinite;
                    animation: opacity-60-25-11-12 1.25s linear infinite;
        }
        .loading-leaf-0:before {
            -webkit-transform: rotate(0deg) translate(7.92px, 0px);
                -ms-transform: rotate(0deg) translate(7.92px, 0px);
                    transform: rotate(0deg) translate(7.92px, 0px);
        }
        .loading-leaf-1:before {
            -webkit-transform: rotate(30deg) translate(7.92px, 0px);
                -ms-transform: rotate(30deg) translate(7.92px, 0px);
                    transform: rotate(30deg) translate(7.92px, 0px);
        }
        .loading-leaf-2:before {
            -webkit-transform: rotate(60deg) translate(7.92px, 0px);
                -ms-transform: rotate(60deg) translate(7.92px, 0px);
                    transform: rotate(60deg) translate(7.92px, 0px);
        }
        .loading-leaf-3:before {
            -webkit-transform: rotate(90deg) translate(7.92px, 0px);
                -ms-transform: rotate(90deg) translate(7.92px, 0px);
                    transform: rotate(90deg) translate(7.92px, 0px);
        }
        .loading-leaf-4:before {
            -webkit-transform: rotate(120deg) translate(7.92px, 0px);
                -ms-transform: rotate(120deg) translate(7.92px, 0px);
                    transform: rotate(120deg) translate(7.92px, 0px);
        }
        .loading-leaf-5:before {
            -webkit-transform: rotate(150deg) translate(7.92px, 0px);
                -ms-transform: rotate(150deg) translate(7.92px, 0px);
                    transform: rotate(150deg) translate(7.92px, 0px);
        }
        .loading-leaf-6:before {
            -webkit-transform: rotate(180deg) translate(7.92px, 0px);
                -ms-transform: rotate(180deg) translate(7.92px, 0px);
                    transform: rotate(180deg) translate(7.92px, 0px);
        }
        .loading-leaf-7:before {
            -webkit-transform: rotate(210deg) translate(7.92px, 0px);
                -ms-transform: rotate(210deg) translate(7.92px, 0px);
                    transform: rotate(210deg) translate(7.92px, 0px);
        }
        .loading-leaf-8:before {
            -webkit-transform: rotate(240deg) translate(7.92px, 0px);
                -ms-transform: rotate(240deg) translate(7.92px, 0px);
                    transform: rotate(240deg) translate(7.92px, 0px);
        }
        .loading-leaf-9:before {
            -webkit-transform: rotate(270deg) translate(7.92px, 0px);
                -ms-transform: rotate(270deg) translate(7.92px, 0px);
                    transform: rotate(270deg) translate(7.92px, 0px);
        }
        .loading-leaf-10:before {
            -webkit-transform: rotate(300deg) translate(7.92px, 0px);
                -ms-transform: rotate(300deg) translate(7.92px, 0px);
                    transform: rotate(300deg) translate(7.92px, 0px);
        }
        .loading-leaf-11:before {
            -webkit-transform: rotate(330deg) translate(7.92px, 0px);
                -ms-transform: rotate(330deg) translate(7.92px, 0px);
                    transform: rotate(330deg) translate(7.92px, 0px);
        }
        @-webkit-keyframes opacity-60-25-0-12 {
            0% { opacity: 0.25; }
            0.01% { opacity: 0.25; }
            0.02% { opacity: 1; }
            60.01% { opacity: 0.25; }
            100% { opacity: 0.25; }
        }@-webkit-keyframes opacity-60-25-1-12 {
            0% { opacity: 0.25; }
            8.34333% { opacity: 0.25; }
            8.35333% { opacity: 1; }
            68.3433% { opacity: 0.25; }
            100% { opacity: 0.25; }
        }@-webkit-keyframes opacity-60-25-2-12 {
            0% { opacity: 0.25; }
            16.6767% { opacity: 0.25; }
            16.6867% { opacity: 1; }
            76.6767% { opacity: 0.25; }
            100% { opacity: 0.25; }
        }@-webkit-keyframes opacity-60-25-3-12 {
            0% { opacity: 0.25; }
            25.01% { opacity: 0.25; }
            25.02% { opacity: 1; }
            85.01% { opacity: 0.25; }
            100% { opacity: 0.25; }
        }@-webkit-keyframes opacity-60-25-4-12 {
            0% { opacity: 0.25; }
            33.3433% { opacity: 0.25; }
            33.3533% { opacity: 1; }
            93.3433% { opacity: 0.25; }
            100% { opacity: 0.25; }
        }@-webkit-keyframes opacity-60-25-5-12 {
            0% { opacity: 0.270958333333333; }
            41.6767% { opacity: 0.25; }
            41.6867% { opacity: 1; }
            1.67667% { opacity: 0.25; }
            100% { opacity: 0.270958333333333; }
        }@-webkit-keyframes opacity-60-25-6-12 {
            0% { opacity: 0.375125; }
            50.01% { opacity: 0.25; }
            50.02% { opacity: 1; }
            10.01% { opacity: 0.25; }
            100% { opacity: 0.375125; }
        }@-webkit-keyframes opacity-60-25-7-12 {
            0% { opacity: 0.479291666666667; }
            58.3433% { opacity: 0.25; }
            58.3533% { opacity: 1; }
            18.3433% { opacity: 0.25; }
            100% { opacity: 0.479291666666667; }
        }@-webkit-keyframes opacity-60-25-8-12 {
            0% { opacity: 0.583458333333333; }
            66.6767% { opacity: 0.25; }
            66.6867% { opacity: 1; }
            26.6767% { opacity: 0.25; }
            100% { opacity: 0.583458333333333; }
        }@-webkit-keyframes opacity-60-25-9-12 {
            0% { opacity: 0.687625; }
            75.01% { opacity: 0.25; }
            75.02% { opacity: 1; }
            35.01% { opacity: 0.25; }
            100% { opacity: 0.687625; }
        }@-webkit-keyframes opacity-60-25-10-12 {
            0% { opacity: 0.791791666666667; }
            83.3433% { opacity: 0.25; }
            83.3533% { opacity: 1; }
            43.3433% { opacity: 0.25; }
            100% { opacity: 0.791791666666667; }
        }@-webkit-keyframes opacity-60-25-11-12 {
            0% { opacity: 0.895958333333333; }
            91.6767% { opacity: 0.25; }
            91.6867% { opacity: 1; }
            51.6767% { opacity: 0.25; }
            100% { opacity: 0.895958333333333; }
        }
