/// ease(function, x)
function scr_ease() {

    /*
        Create
            counter = 0;
            amplify = 'final value'
        Step
            counter += 1/'roomspeed';
            x = scr_ease("function", counter) * amplify;
    */

    var func, xx, xx2, xxm1;
    func = argument0;
    xx = argument1;
    xx2 = xx * 2;
    xxm1 = xx - 1;

    if (xx <= 0)
        return 0;
    if (xx >= 1)
        return 1;

    switch (func) {

        case "linear":
            return xx;

        case "instant":
            return 0;

        case "easeinquad":
            return xx * xx;

        case "easeoutquad":
            return -xx * (xx - 2);

        case "easeinoutquad":
            if (xx2 < 1)
                return 1 / 2 * xx2 * xx2;
            return -1 / 2 * ((xx2 - 1) * (xx2 - 3) - 1);

        case "easeincubic":
            return xx * xx * xx;

        case "easeoutcubic":
            return ((xxm1) * xxm1 * xxm1 + 1);

        case "easeinoutcubic":
            if (xx2 < 1)
                return 1 / 2 * xx2 * xx2 * xx2;
            return 1 / 2 * ((xx2 - 2) * (xx2 - 2) * (xx2 - 2) + 2);

        case "easeinquart":
            return xx * xx * xx * xx;

        case "easeoutquart":
            return -((xxm1) * xxm1 * xxm1 * xxm1 - 1);

        case "easeinoutquart":
            if (xx2 < 1)
                return 1 / 2 * xx2 * xx2 * xx2 * xx2;
            return -1 / 2 * ((xx2 - 2) * (xx2 - 2) * (xx2 - 2) * (xx2 - 2) - 2);

        case "easeinquint":
            return xx * xx * xx * xx * xx;

        case "easeoutquint":
            return ((xxm1) * xxm1 * xxm1 * xxm1 * xxm1 + 1);

        case "easeinoutquint":
            if (xx2 < 1)
                return 1 / 2 * xx2 * xx2 * xx2 * xx2 * xx2;
            return 1 / 2 * ((xx2 - 2) * (xx2 - 2) * (xx2 - 2) * (xx2 - 2) * (xx2 - 2) + 2);

        case "easeinsine":
            return -Math.cos(xx * (Math.PI / 2)) + 1;

        case "easeoutsine":
            return Math.sin(xx * (Math.PI / 2));

        case "easeinoutsine":
            return -1 / 2 * (Math.cos(Math.PI * xx / 1) - 1);

        case "easeinexpo":
            return Math.pow(2, 10 * (xx - 1));

        case "easeoutexpo":
            return -Math.pow(2, -10 * xx) + 1;

        case "easeinoutexpo":
            if (xx2 < 1)
                return 1 / 2 * Math.pow(2, 10 * (xx2 - 1));
            return 1 / 2 * (-Math.pow(2, -10 * (xx2 - 1)) + 2);

        case "easeincirc":
            return -(Math.sqrt(1 - xx * xx) - 1);

        case "easeoutcirc":
            return Math.sqrt(1 - (xxm1) * xxm1);

        case "easeinoutcirc":
            if (xx2 < 1)
                return -1 / 2 * (Math.sqrt(1 - xx2 * xx2) - 1);
            return 1 / 2 * (Math.sqrt(Math.max(0, 1 - (xx2 - 2) * (xx2 - 2))) + 1);

        case "easeinelastic":
            var p = 0.3;
            var s = p / (2 * Math.PI) * Math.asin(1);
            return -(Math.pow(2, 10 * (xx - 1)) * Math.sin(((xx - 1) * 1 - s) * (2 * Math.PI) / p));

        case "easeinoutelastic":
            var p = 0.3 * 1.5;
            var s = p / (2 * Math.PI) * Math.asin(1);
            if (xx2 < 1)
                return -0.5 * (Math.pow(2, 10 * (xx2 - 1)) * Math.sin(((xx2 - 1) * 1 - s) * (2 * Math.PI) / p));
            return Math.pow(2, -10 * (xx2 - 1)) * Math.sin(((xx2 - 1) * 1 - s) * (2 * Math.PI) / p) * 0.5 + 1;

        case "easeinback":
            var s = 1.70158;
            return xx * xx * ((s + 1) * xx - s);

        case "easeoutback":
            var s = 1.70158;
            return (xxm1 * xxm1 * ((s + 1) * xxm1 + s) + 1);

        case "easeinoutback":
            var s = 1.70158;
            if (xx2 < 1)
                return 1 / 2 * (xx2 * xx2 * (((s * (1.525)) + 1) * xx2 - (s * (1.525))));
            return 1 / 2 * ((xx2 - 2) * (xx2 - 2) * (((s * (1.525)) + 1) * (xx2 - 2) + (s * (1.525))) + 2);

        case "easeinbounce":
            xx = 1 - xx;
            if (xx < (1 / 2.75))
                return 1 - (7.5625 * xx * xx);
            else if (xx < (2 / 2.75))
                return 1 - (7.5625 * (xx - (1.5 / 2.75)) * (xx - (1.5 / 2.75)) + 0.75);
			else if (xx < (2.5 / 2.75))
                return 1 - (7.5625 * (xx - (2.25 / 2.75)) * (xx - (2.25 / 2.75)) + 0.9375);
            else
                return 1 - (7.5625 * (xx - (2.625 / 2.75)) * (xx - (2.625 / 2.75)) + 0.984375);

        case "easeoutbounce":
            if (xx < (1 / 2.75))
                return (7.5625 * xx * xx);
            else if (xx < (2 / 2.75))
                return (7.5625 * (xx - (1.5 / 2.75)) * (xx - (1.5 / 2.75)) + 0.75);
            else if (xx < (2.5 / 2.75))
                return (7.5625 * (xx - (2.25 / 2.75)) * (xx - (2.25 / 2.75)) + 0.9375);
            else
                return (7.5625 * (xx - (2.625 / 2.75)) * (xx - (2.625 / 2.75)) + 0.984375);

        case "easeinoutbounce":
            var ret;
            if (xx < 1 / 2) {
                xx *= 2;
                xx = 1 - xx;
                if (xx < (1 / 2.75))
                    ret = (7.5625 * xx * xx);
                else if (xx < (2 / 2.75))
                    ret = (7.5625 * (xx - (1.5 / 2.75)) * (xx - (1.5 / 2.75)) + 0.75);
                else if (xx < (2.5 / 2.75))
                    ret = (7.5625 * (xx - (2.25 / 2.75)) * (xx - (2.25 / 2.75)) + 0.9375);
                else
                    ret = (7.5625 * (xx - (2.625 / 2.75)) * (xx - (2.625 / 2.75)) + 0.984375);
                ret = 1 - ret;
                ret *= .5;
            } else {
                xx = xx * 2 - 1;
                if (xx < (1 / 2.75))
                    ret = (7.5625 * xx * xx);
                else if (xx < (2 / 2.75))
                    ret = (7.5625 * (xx - (1.5 / 2.75)) * (xx - (1.5 / 2.75)) + 0.75);
                else if (xx < (2.5 / 2.75))
                    ret = (7.5625 * (xx - (2.25 / 2.75)) * (xx - (2.25 / 2.75)) + 0.9375);
                else
                    ret = (7.5625 * (xx - (2.625 / 2.75)) * (xx - (2.625 / 2.75)) + 0.984375);
                ret *= 0.5;
                ret += 0.5;
            }
            return ret;
    }
    return xx;
}