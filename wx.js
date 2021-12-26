
riot.tag('wx-button', '<button type="button" __disabled="{ opts.disabled === true || opts.disabled === \'\' }"><yield></yield></button>', 'wx-button, [riot-tag="wx-button"]{ position: relative; display: block; } wx-button button, [riot-tag="wx-button"] button{ display: block; width: 100%; padding: 0; font-size: 18px; text-align: center; line-height: 2.33333333; border-radius: 5px; color: #454545; background: #F7F7F7; overflow: hidden; border: none; } wx-button button:after, [riot-tag="wx-button"] button:after{ position: absolute; top: 0; left: 0; width: 200%; height: 200%; content: " "; box-sizing: border-box; border-radius: 10px; border: 1px solid rgba(0,0,0,0.2); transform: scale(0.5); transform-origin: 0 0; } wx-button button:active, [riot-tag="wx-button"] button:active{ color: #A1A1A1; background-color: #DEDEDE; } wx-button button:disabled, [riot-tag="wx-button"] button:disabled{ color: #c9c9c9; } wx-button.wx-primary > button, [riot-tag="wx-button"].wx-primary > button{ color: #fff; background: #04be02; } wx-button.wx-primary > button:active, [riot-tag="wx-button"].wx-primary > button:active{ color: rgba(255, 255, 255, 0.4); background-color: #039702; } wx-button.wx-primary > button:disabled, [riot-tag="wx-button"].wx-primary > button:disabled{ color: rgba(255, 255, 255, 0.6); } wx-button.wx-danger > button, [riot-tag="wx-button"].wx-danger > button{ color: #fff; background-color: #EF4F4F;; } wx-button.wx-danger > button:active, [riot-tag="wx-button"].wx-danger > button:active{ color: rgba(255, 255, 255, 0.4); background-color: #C13E3E; } wx-button.wx-danger > button:disabled, [riot-tag="wx-button"].wx-danger > button:disabled{ color: rgba(255, 255, 255, 0.6); } wx-button button:focus, [riot-tag="wx-button"] button:focus{ outline: none; }', function(opts) {
});

riot.tag('wx-cells-base', '<div if="{ typeof opts.title == \'string\' }" class="title">{ opts.title }</div> <div class="cells"><yield></yield></div>', 'wx-cells-base .title, [riot-tag="wx-cells-base"] .title{ margin-top: .77em; margin-bottom: .3em; padding-left: 15px; padding-right: 15px; color: #888; font-size: 14px; } wx-cells-base .cells, [riot-tag="wx-cells-base"] .cells{ margin-top: 1.17647059em; background-color: #FFFFFF; line-height: 1.41176471; font-size: 17px; overflow: hidden; position: relative; } wx-cells-base .cells:before, [riot-tag="wx-cells-base"] .cells:before{ content: " "; position: absolute; left: 0; top: 0; width: 100%; height: 1px; border-top: 1px solid #D9D9D9; transform-origin: 0 0; transform: scaleY(0.5); } wx-cells-base .cells:after, [riot-tag="wx-cells-base"] .cells:after{ content: " "; position: absolute; left: 0; bottom: 0; width: 100%; height: 1px; border-bottom: 1px solid #D9D9D9; transform-origin: 0 100%; transform: scaleY(0.5); } wx-cells-base .title + .cells, [riot-tag="wx-cells-base"] .title + .cells{ margin-top: 0; } wx-cells-base .cell, [riot-tag="wx-cells-base"] .cell{ position: relative; padding: 10px 15px; } wx-cells-base .cell.clickable:active, [riot-tag="wx-cells-base"] .cell.clickable:active{ background-color: #ECECEC; } wx-cells-base .cell + .cell:before, [riot-tag="wx-cells-base"] .cell + .cell:before{ content: " "; position: absolute; left: 0; top: 0; width: 100%; height: 1px; border-top: 1px solid #D9D9D9; transform-origin: 0 0; transform: scaleY(0.5); left: 15px; }', function(opts) {
});

riot.tag('wx-cells', '<wx-cells-base title="{ opts.title }" dataset="{ opts.dataset }"> <div each="{ opts.dataset }" onclick="{ click }" class="cell { clickable: click }"> <div if="{ typeof text == \'string\' }" class="text">{ text }</div> <div class="main"><img if="{ image }" riot-src="{ image }">{ main }</div> </div> </wx-cells-base>', 'wx-cells .main, [riot-tag="wx-cells"] .main{ vertical-align: middle; color: #000; } wx-cells img, [riot-tag="wx-cells"] img{ vertical-align: middle; width: 20px; height: 20px; margin-right: 5px; } wx-cells .text, [riot-tag="wx-cells"] .text{ float: right; color: #888; } wx-cells .clickable .text:after, [riot-tag="wx-cells"] .clickable .text:after{ content: " "; display: inline-block; transform: rotate(45deg); height: 6px; width: 6px; border-width: 2px 2px 0 0; border-color: #C8C8CD; border-style: solid; position: relative; top: -1px; }', function(opts) {
var tag = this;
tag.on('mount', function () {
    console.log('wx-cells', tag);
});
});

riot.tag('wx-select', '<wx-cells-base title="{ opts.title }" options="{ opts.options }" class="{single: !opts.multiple, multiple: opts.multiple}"> <div each="{ opts.options }" onclick="{ parent.parent.click }" class="cell clickable {selected: selected }"> <div class="check"></div> <div class="main">{ main }</div> </div> </wx-cells-base>', 'wx-select .multiple .check, [riot-tag="wx-select"] .multiple .check{ float: left; font-size: 23px; line-height: 23px; padding-right: 0.35em; vertical-align: top; } wx-select .multiple .check:before, [riot-tag="wx-select"] .multiple .check:before{ content: \'\\EA01\'; color: #c9c9c9; font-family: weui; } wx-select .multiple .selected .check:before, [riot-tag="wx-select"] .multiple .selected .check:before{ content: \'\\EA06\'; color: #09BB07; } wx-select .single .check, [riot-tag="wx-select"] .single .check{ float: right; } wx-select .single .selected .check:before, [riot-tag="wx-select"] .single .selected .check:before{ content: \'\\EA08\'; color: #09BB07; font-family: weui; font-size: 16px; } wx-select .main, [riot-tag="wx-select"] .main{ line-height: 24px; }', function(opts) {
var tag = this;

tag.click = function (e) {
    if (tag.opts.multiple) {
        e.item.selected = !e.item.selected;
    } else {
        tag.opts.options.forEach(function (v) {
            v.selected = false;
        });
        e.item.selected = true;
    }

    if (typeof tag.opts.onchange === 'function') {
        var values = [];
        tag.opts.options.forEach(function (v) {
            if (v.selected) {
                values.push(v.value);
            }
        });
        tag.opts.onchange(values);
    }
};
});