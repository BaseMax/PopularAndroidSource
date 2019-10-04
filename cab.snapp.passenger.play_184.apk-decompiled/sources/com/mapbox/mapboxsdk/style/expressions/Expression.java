package com.mapbox.mapboxsdk.style.expressions;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.e;
import com.google.gson.k;
import com.mapbox.mapboxsdk.style.layers.Property;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.utils.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.eclipse.paho.a.a.w;

public class Expression {
    private final Expression[] arguments;
    private final String operator;

    public static class Array {
    }

    public static final class Converter {
        private static final e gson = new e();

        public static Expression convert(JsonArray jsonArray) {
            if (jsonArray.size() != 0) {
                String asString = jsonArray.get(0).getAsString();
                ArrayList arrayList = new ArrayList();
                for (int i = 1; i < jsonArray.size(); i++) {
                    JsonElement jsonElement = jsonArray.get(i);
                    if (!asString.equals("literal") || !(jsonElement instanceof JsonArray)) {
                        arrayList.add(convert(jsonElement));
                    } else {
                        JsonArray jsonArray2 = (JsonArray) jsonElement;
                        Object[] objArr = new Object[jsonArray2.size()];
                        int i2 = 0;
                        while (i2 < jsonArray2.size()) {
                            JsonElement jsonElement2 = jsonArray2.get(i2);
                            if (jsonElement2 instanceof JsonPrimitive) {
                                objArr[i2] = convertToValue((JsonPrimitive) jsonElement2);
                                i2++;
                            } else {
                                throw new IllegalArgumentException("Nested literal arrays are not supported.");
                            }
                        }
                        arrayList.add(new ExpressionLiteralArray(objArr));
                    }
                }
                return new Expression(asString, (Expression[]) arrayList.toArray(new Expression[arrayList.size()]));
            }
            throw new IllegalArgumentException("Can't convert empty jsonArray expressions");
        }

        public static Expression convert(JsonElement jsonElement) {
            if (jsonElement instanceof JsonArray) {
                return convert((JsonArray) jsonElement);
            }
            if (jsonElement instanceof JsonPrimitive) {
                return convert((JsonPrimitive) jsonElement);
            }
            if (jsonElement instanceof k) {
                return new ExpressionLiteral("");
            }
            if (jsonElement instanceof JsonObject) {
                HashMap hashMap = new HashMap();
                JsonObject jsonObject = (JsonObject) jsonElement;
                for (String next : jsonObject.keySet()) {
                    hashMap.put(next, convert(jsonObject.get(next)));
                }
                return new ExpressionMap(hashMap);
            }
            throw new RuntimeException("Unsupported expression conversion for " + jsonElement.getClass());
        }

        private static Expression convert(JsonPrimitive jsonPrimitive) {
            return new ExpressionLiteral(convertToValue(jsonPrimitive));
        }

        private static Object convertToValue(JsonPrimitive jsonPrimitive) {
            if (jsonPrimitive.isBoolean()) {
                return Boolean.valueOf(jsonPrimitive.getAsBoolean());
            }
            if (jsonPrimitive.isNumber()) {
                return Float.valueOf(jsonPrimitive.getAsFloat());
            }
            if (jsonPrimitive.isString()) {
                return jsonPrimitive.getAsString();
            }
            throw new RuntimeException("Unsupported literal expression conversion for " + jsonPrimitive.getClass());
        }

        public static Expression convert(String str) {
            return convert((JsonArray) gson.fromJson(str, JsonArray.class));
        }
    }

    public static class ExpressionLiteral extends Expression implements ValueExpression {
        protected Object literal;

        public ExpressionLiteral(Object obj) {
            if (obj instanceof String) {
                obj = unwrapStringLiteral((String) obj);
            } else if (obj instanceof Number) {
                obj = Float.valueOf(((Number) obj).floatValue());
            }
            this.literal = obj;
        }

        public Object toValue() {
            Object obj = this.literal;
            if (!(obj instanceof PropertyValue)) {
                return obj instanceof ExpressionLiteral ? ((ExpressionLiteral) obj).toValue() : obj;
            }
            throw new IllegalArgumentException("PropertyValue are not allowed as an expression literal, use value instead.");
        }

        public Object[] toArray() {
            return new Object[]{"literal", this.literal};
        }

        public String toString() {
            Object obj = this.literal;
            if (!(obj instanceof String)) {
                return obj.toString();
            }
            return "\"" + this.literal + "\"";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !Expression.super.equals(obj)) {
                return false;
            }
            Object obj2 = this.literal;
            Object obj3 = ((ExpressionLiteral) obj).literal;
            if (obj2 != null) {
                return obj2.equals(obj3);
            }
            return obj3 == null;
        }

        public int hashCode() {
            int hashCode = Expression.super.hashCode() * 31;
            Object obj = this.literal;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        private static String unwrapStringLiteral(String str) {
            return (str.length() > 1 && str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') ? str.substring(1, str.length() - 1) : str;
        }
    }

    static class ExpressionLiteralArray extends ExpressionLiteral {
        ExpressionLiteralArray(Object[] objArr) {
            super(objArr);
        }

        public String toString() {
            Object[] objArr = (Object[]) this.literal;
            StringBuilder sb = new StringBuilder("[");
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj instanceof String) {
                    sb.append("\"");
                    sb.append(obj);
                    sb.append("\"");
                } else {
                    sb.append(obj);
                }
                if (i != objArr.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Arrays.equals((Object[]) this.literal, (Object[]) ((ExpressionLiteralArray) obj).literal);
        }
    }

    static class ExpressionMap extends Expression implements ValueExpression {
        private Map<String, Expression> map;

        ExpressionMap(Map<String, Expression> map2) {
            this.map = map2;
        }

        public Object toValue() {
            HashMap hashMap = new HashMap();
            for (String next : this.map.keySet()) {
                Expression expression = this.map.get(next);
                if (expression instanceof ValueExpression) {
                    hashMap.put(next, ((ValueExpression) expression).toValue());
                } else {
                    hashMap.put(next, expression.toArray());
                }
            }
            return hashMap;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            for (String next : this.map.keySet()) {
                sb.append("\"");
                sb.append(next);
                sb.append("\": ");
                sb.append(this.map.get(next));
                sb.append(", ");
            }
            if (this.map.size() > 0) {
                sb.delete(sb.length() - 2, sb.length());
            }
            sb.append("}");
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !Expression.super.equals(obj)) {
                return false;
            }
            return this.map.equals(((ExpressionMap) obj).map);
        }

        public int hashCode() {
            int hashCode = Expression.super.hashCode() * 31;
            Map<String, Expression> map2 = this.map;
            return hashCode + (map2 == null ? 0 : map2.hashCode());
        }
    }

    public static class FormatEntry {
        /* access modifiers changed from: private */
        public FormatOption[] options;
        /* access modifiers changed from: private */
        public Expression text;

        FormatEntry(Expression expression, FormatOption[] formatOptionArr) {
            this.text = expression;
            this.options = formatOptionArr;
        }
    }

    public static class FormatOption {
        /* access modifiers changed from: private */
        public String type;
        /* access modifiers changed from: private */
        public Expression value;

        FormatOption(String str, Expression expression) {
            this.type = str;
            this.value = expression;
        }

        public static FormatOption formatFontScale(Expression expression) {
            return new FormatOption("font-scale", expression);
        }

        public static FormatOption formatFontScale(double d) {
            return new FormatOption("font-scale", Expression.literal((Number) Double.valueOf(d)));
        }

        public static FormatOption formatTextFont(Expression expression) {
            return new FormatOption("text-font", expression);
        }

        public static FormatOption formatTextFont(String[] strArr) {
            return new FormatOption("text-font", Expression.literal((Object[]) strArr));
        }

        public static FormatOption formatTextColor(Expression expression) {
            return new FormatOption("text-color", expression);
        }

        public static FormatOption formatTextColor(int i) {
            return new FormatOption("text-color", Expression.color(i));
        }
    }

    public static class Interpolator extends Expression {
        Interpolator(String str, Expression... expressionArr) {
            super(str, expressionArr);
        }
    }

    public static class Stop {
        private Object output;
        private Object value;

        Stop(Object obj, Object obj2) {
            this.value = obj;
            this.output = obj2;
        }

        static Expression[] toExpressionArray(Stop... stopArr) {
            Expression[] expressionArr = new Expression[(stopArr.length * 2)];
            for (int i = 0; i < stopArr.length; i++) {
                Stop stop = stopArr[i];
                Object obj = stop.value;
                Object obj2 = stop.output;
                if (!(obj instanceof Expression)) {
                    obj = Expression.literal(obj);
                }
                if (!(obj2 instanceof Expression)) {
                    obj2 = Expression.literal(obj2);
                }
                int i2 = i * 2;
                expressionArr[i2] = (Expression) obj;
                expressionArr[i2 + 1] = (Expression) obj2;
            }
            return expressionArr;
        }
    }

    interface ValueExpression {
        Object toValue();
    }

    Expression() {
        this.operator = null;
        this.arguments = null;
    }

    public Expression(String str, Expression... expressionArr) {
        this.operator = str;
        this.arguments = expressionArr;
    }

    public static Expression literal(Number number) {
        return new ExpressionLiteral(number);
    }

    public static Expression literal(String str) {
        return new ExpressionLiteral(str);
    }

    public static Expression literal(boolean z) {
        return new ExpressionLiteral(Boolean.valueOf(z));
    }

    public static Expression literal(Object obj) {
        if (obj.getClass().isArray()) {
            return literal(toObjectArray(obj));
        }
        if (!(obj instanceof Expression)) {
            return new ExpressionLiteral(obj);
        }
        throw new RuntimeException("Can't convert an expression to a literal");
    }

    public static Expression literal(Object[] objArr) {
        return new Expression("literal", new ExpressionLiteralArray(objArr));
    }

    public static Expression color(int i) {
        float[] colorToRgbaArray = ColorUtils.colorToRgbaArray(i);
        return rgba((Number) Float.valueOf(colorToRgbaArray[0]), (Number) Float.valueOf(colorToRgbaArray[1]), (Number) Float.valueOf(colorToRgbaArray[2]), (Number) Float.valueOf(colorToRgbaArray[3]));
    }

    public static Expression rgb(Expression expression, Expression expression2, Expression expression3) {
        return new Expression("rgb", expression, expression2, expression3);
    }

    public static Expression rgb(Number number, Number number2, Number number3) {
        return rgb(literal(number), literal(number2), literal(number3));
    }

    public static Expression rgba(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        return new Expression("rgba", expression, expression2, expression3, expression4);
    }

    public static Expression rgba(Number number, Number number2, Number number3, Number number4) {
        return rgba(literal(number), literal(number2), literal(number3), literal(number4));
    }

    public static Expression toRgba(Expression expression) {
        return new Expression("to-rgba", expression);
    }

    public static Expression eq(Expression expression, Expression expression2) {
        return new Expression("==", expression, expression2);
    }

    public static Expression eq(Expression expression, Expression expression2, Expression expression3) {
        return new Expression("==", expression, expression2, expression3);
    }

    public static Expression eq(Expression expression, boolean z) {
        return eq(expression, literal(z));
    }

    public static Expression eq(Expression expression, String str) {
        return eq(expression, literal(str));
    }

    public static Expression eq(Expression expression, String str, Expression expression2) {
        return eq(expression, literal(str), expression2);
    }

    public static Expression eq(Expression expression, Number number) {
        return eq(expression, literal(number));
    }

    public static Expression neq(Expression expression, Expression expression2) {
        return new Expression("!=", expression, expression2);
    }

    public static Expression neq(Expression expression, Expression expression2, Expression expression3) {
        return new Expression("!=", expression, expression2, expression3);
    }

    public static Expression neq(Expression expression, boolean z) {
        return new Expression("!=", expression, literal(z));
    }

    public static Expression neq(Expression expression, String str) {
        return new Expression("!=", expression, literal(str));
    }

    public static Expression neq(Expression expression, String str, Expression expression2) {
        return new Expression("!=", expression, literal(str), expression2);
    }

    public static Expression neq(Expression expression, Number number) {
        return new Expression("!=", expression, literal(number));
    }

    public static Expression gt(Expression expression, Expression expression2) {
        return new Expression(">", expression, expression2);
    }

    public static Expression gt(Expression expression, Expression expression2, Expression expression3) {
        return new Expression(">", expression, expression2, expression3);
    }

    public static Expression gt(Expression expression, Number number) {
        return new Expression(">", expression, literal(number));
    }

    public static Expression gt(Expression expression, String str) {
        return new Expression(">", expression, literal(str));
    }

    public static Expression gt(Expression expression, String str, Expression expression2) {
        return new Expression(">", expression, literal(str), expression2);
    }

    public static Expression lt(Expression expression, Expression expression2) {
        return new Expression("<", expression, expression2);
    }

    public static Expression lt(Expression expression, Expression expression2, Expression expression3) {
        return new Expression("<", expression, expression2, expression3);
    }

    public static Expression lt(Expression expression, Number number) {
        return new Expression("<", expression, literal(number));
    }

    public static Expression lt(Expression expression, String str) {
        return new Expression("<", expression, literal(str));
    }

    public static Expression lt(Expression expression, String str, Expression expression2) {
        return new Expression("<", expression, literal(str), expression2);
    }

    public static Expression gte(Expression expression, Expression expression2) {
        return new Expression(">=", expression, expression2);
    }

    public static Expression gte(Expression expression, Expression expression2, Expression expression3) {
        return new Expression(">=", expression, expression2, expression3);
    }

    public static Expression gte(Expression expression, Number number) {
        return new Expression(">=", expression, literal(number));
    }

    public static Expression gte(Expression expression, String str) {
        return new Expression(">=", expression, literal(str));
    }

    public static Expression gte(Expression expression, String str, Expression expression2) {
        return new Expression(">=", expression, literal(str), expression2);
    }

    public static Expression lte(Expression expression, Expression expression2) {
        return new Expression("<=", expression, expression2);
    }

    public static Expression lte(Expression expression, Expression expression2, Expression expression3) {
        return new Expression("<=", expression, expression2, expression3);
    }

    public static Expression lte(Expression expression, Number number) {
        return new Expression("<=", expression, literal(number));
    }

    public static Expression lte(Expression expression, String str) {
        return new Expression("<=", expression, literal(str));
    }

    public static Expression lte(Expression expression, String str, Expression expression2) {
        return new Expression("<=", expression, literal(str), expression2);
    }

    public static Expression all(Expression... expressionArr) {
        return new Expression("all", expressionArr);
    }

    public static Expression any(Expression... expressionArr) {
        return new Expression("any", expressionArr);
    }

    public static Expression not(Expression expression) {
        return new Expression("!", expression);
    }

    public static Expression not(boolean z) {
        return not(literal(z));
    }

    public static Expression switchCase(Expression... expressionArr) {
        return new Expression("case", expressionArr);
    }

    public static Expression match(Expression... expressionArr) {
        return new Expression("match", expressionArr);
    }

    public static Expression match(Expression expression, Expression expression2, Stop... stopArr) {
        return match(join(join(new Expression[]{expression}, Stop.toExpressionArray(stopArr)), new Expression[]{expression2}));
    }

    public static Expression coalesce(Expression... expressionArr) {
        return new Expression("coalesce", expressionArr);
    }

    public static Expression properties() {
        return new Expression("properties", new Expression[0]);
    }

    public static Expression geometryType() {
        return new Expression("geometry-type", new Expression[0]);
    }

    public static Expression id() {
        return new Expression("id", new Expression[0]);
    }

    public static Expression heatmapDensity() {
        return new Expression("heatmap-density", new Expression[0]);
    }

    public static Expression lineProgress() {
        return new Expression("line-progress", new Expression[0]);
    }

    public static Expression at(Expression expression, Expression expression2) {
        return new Expression("at", expression, expression2);
    }

    public static Expression at(Number number, Expression expression) {
        return at(literal(number), expression);
    }

    public static Expression get(Expression expression) {
        return new Expression("get", expression);
    }

    public static Expression get(String str) {
        return get(literal(str));
    }

    public static Expression get(Expression expression, Expression expression2) {
        return new Expression("get", expression, expression2);
    }

    public static Expression get(String str, Expression expression) {
        return get(literal(str), expression);
    }

    public static Expression has(Expression expression) {
        return new Expression("has", expression);
    }

    public static Expression has(String str) {
        return has(literal(str));
    }

    public static Expression has(Expression expression, Expression expression2) {
        return new Expression("has", expression, expression2);
    }

    public static Expression has(String str, Expression expression) {
        return has(literal(str), expression);
    }

    public static Expression length(Expression expression) {
        return new Expression("length", expression);
    }

    public static Expression length(String str) {
        return length(literal(str));
    }

    public static Expression ln2() {
        return new Expression("ln2", new Expression[0]);
    }

    public static Expression pi() {
        return new Expression("pi", new Expression[0]);
    }

    public static Expression e() {
        return new Expression("e", new Expression[0]);
    }

    public static Expression sum(Expression... expressionArr) {
        return new Expression(w.SINGLE_LEVEL_WILDCARD, expressionArr);
    }

    public static Expression sum(Number... numberArr) {
        Expression[] expressionArr = new Expression[numberArr.length];
        for (int i = 0; i < numberArr.length; i++) {
            expressionArr[i] = literal(numberArr[i]);
        }
        return sum(expressionArr);
    }

    public static Expression product(Expression... expressionArr) {
        return new Expression("*", expressionArr);
    }

    public static Expression product(Number... numberArr) {
        Expression[] expressionArr = new Expression[numberArr.length];
        for (int i = 0; i < numberArr.length; i++) {
            expressionArr[i] = literal(numberArr[i]);
        }
        return product(expressionArr);
    }

    public static Expression subtract(Expression expression) {
        return new Expression("-", expression);
    }

    public static Expression subtract(Number number) {
        return subtract(literal(number));
    }

    public static Expression subtract(Expression expression, Expression expression2) {
        return new Expression("-", expression, expression2);
    }

    public static Expression subtract(Number number, Number number2) {
        return subtract(literal(number), literal(number2));
    }

    public static Expression division(Expression expression, Expression expression2) {
        return new Expression(w.TOPIC_LEVEL_SEPARATOR, expression, expression2);
    }

    public static Expression division(Number number, Number number2) {
        return division(literal(number), literal(number2));
    }

    public static Expression mod(Expression expression, Expression expression2) {
        return new Expression("%", expression, expression2);
    }

    public static Expression mod(Number number, Number number2) {
        return mod(literal(number), literal(number2));
    }

    public static Expression pow(Expression expression, Expression expression2) {
        return new Expression("^", expression, expression2);
    }

    public static Expression pow(Number number, Number number2) {
        return pow(literal(number), literal(number2));
    }

    public static Expression sqrt(Expression expression) {
        return new Expression("sqrt", expression);
    }

    public static Expression sqrt(Number number) {
        return sqrt(literal(number));
    }

    public static Expression log10(Expression expression) {
        return new Expression("log10", expression);
    }

    public static Expression log10(Number number) {
        return log10(literal(number));
    }

    public static Expression ln(Expression expression) {
        return new Expression("ln", expression);
    }

    public static Expression ln(Number number) {
        return ln(literal(number));
    }

    public static Expression log2(Expression expression) {
        return new Expression("log2", expression);
    }

    public static Expression log2(Number number) {
        return log2(literal(number));
    }

    public static Expression sin(Expression expression) {
        return new Expression("sin", expression);
    }

    public static Expression sin(Number number) {
        return sin(literal(number));
    }

    public static Expression cos(Expression expression) {
        return new Expression("cos", expression);
    }

    public static Expression cos(Number number) {
        return new Expression("cos", literal(number));
    }

    public static Expression tan(Expression expression) {
        return new Expression("tan", expression);
    }

    public static Expression tan(Number number) {
        return new Expression("tan", literal(number));
    }

    public static Expression asin(Expression expression) {
        return new Expression("asin", expression);
    }

    public static Expression asin(Number number) {
        return asin(literal(number));
    }

    public static Expression acos(Expression expression) {
        return new Expression("acos", expression);
    }

    public static Expression acos(Number number) {
        return acos(literal(number));
    }

    public static Expression atan(Expression expression) {
        return new Expression("atan", expression);
    }

    public static Expression atan(Number number) {
        return atan(literal(number));
    }

    public static Expression min(Expression... expressionArr) {
        return new Expression("min", expressionArr);
    }

    public static Expression min(Number... numberArr) {
        Expression[] expressionArr = new Expression[numberArr.length];
        for (int i = 0; i < numberArr.length; i++) {
            expressionArr[i] = literal(numberArr[i]);
        }
        return min(expressionArr);
    }

    public static Expression max(Expression... expressionArr) {
        return new Expression("max", expressionArr);
    }

    public static Expression max(Number... numberArr) {
        Expression[] expressionArr = new Expression[numberArr.length];
        for (int i = 0; i < numberArr.length; i++) {
            expressionArr[i] = literal(numberArr[i]);
        }
        return max(expressionArr);
    }

    public static Expression round(Expression expression) {
        return new Expression("round", expression);
    }

    public static Expression round(Number number) {
        return round(literal(number));
    }

    public static Expression abs(Expression expression) {
        return new Expression("abs", expression);
    }

    public static Expression abs(Number number) {
        return abs(literal(number));
    }

    public static Expression ceil(Expression expression) {
        return new Expression("ceil", expression);
    }

    public static Expression ceil(Number number) {
        return ceil(literal(number));
    }

    public static Expression floor(Expression expression) {
        return new Expression("floor", expression);
    }

    public static Expression floor(Number number) {
        return floor(literal(number));
    }

    public static Expression resolvedLocale(Expression expression) {
        return new Expression("resolved-locale", expression);
    }

    public static Expression isSupportedScript(Expression expression) {
        return new Expression("is-supported-script", expression);
    }

    public static Expression isSupportedScript(String str) {
        return new Expression("is-supported-script", literal(str));
    }

    public static Expression upcase(Expression expression) {
        return new Expression("upcase", expression);
    }

    public static Expression upcase(String str) {
        return upcase(literal(str));
    }

    public static Expression downcase(Expression expression) {
        return new Expression("downcase", expression);
    }

    public static Expression downcase(String str) {
        return downcase(literal(str));
    }

    public static Expression concat(Expression... expressionArr) {
        return new Expression("concat", expressionArr);
    }

    public static Expression concat(String... strArr) {
        Expression[] expressionArr = new Expression[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            expressionArr[i] = literal(strArr[i]);
        }
        return concat(expressionArr);
    }

    public static Expression array(Expression expression) {
        return new Expression("array", expression);
    }

    public static Expression typeOf(Expression expression) {
        return new Expression("typeof", expression);
    }

    public static Expression string(Expression... expressionArr) {
        return new Expression("string", expressionArr);
    }

    public static Expression number(Expression... expressionArr) {
        return new Expression("number", expressionArr);
    }

    public static Expression bool(Expression... expressionArr) {
        return new Expression("boolean", expressionArr);
    }

    public static Expression collator(boolean z, boolean z2, Locale locale) {
        HashMap hashMap = new HashMap();
        hashMap.put("case-sensitive", literal(z));
        hashMap.put("diacritic-sensitive", literal(z2));
        StringBuilder sb = new StringBuilder();
        String language = locale.getLanguage();
        if (language != null && !language.isEmpty()) {
            sb.append(language);
        }
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append("-");
            sb.append(country);
        }
        hashMap.put("locale", literal(sb.toString()));
        return new Expression("collator", new ExpressionMap(hashMap));
    }

    public static Expression collator(boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put("case-sensitive", literal(z));
        hashMap.put("diacritic-sensitive", literal(z2));
        return new Expression("collator", new ExpressionMap(hashMap));
    }

    public static Expression collator(Expression expression, Expression expression2, Expression expression3) {
        HashMap hashMap = new HashMap();
        hashMap.put("case-sensitive", expression);
        hashMap.put("diacritic-sensitive", expression2);
        hashMap.put("locale", expression3);
        return new Expression("collator", new ExpressionMap(hashMap));
    }

    public static Expression collator(Expression expression, Expression expression2) {
        HashMap hashMap = new HashMap();
        hashMap.put("case-sensitive", expression);
        hashMap.put("diacritic-sensitive", expression2);
        return new Expression("collator", new ExpressionMap(hashMap));
    }

    public static Expression format(FormatEntry... formatEntryArr) {
        Expression[] expressionArr = new Expression[(formatEntryArr.length * 2)];
        int length = formatEntryArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            FormatEntry formatEntry = formatEntryArr[i];
            int i3 = i2 + 1;
            expressionArr[i2] = formatEntry.text;
            HashMap hashMap = new HashMap();
            if (formatEntry.options != null) {
                for (FormatOption formatOption : formatEntry.options) {
                    hashMap.put(formatOption.type, formatOption.value);
                }
            }
            expressionArr[i3] = new ExpressionMap(hashMap);
            i++;
            i2 = i3 + 1;
        }
        return new Expression("format", expressionArr);
    }

    public static FormatEntry formatEntry(Expression expression, FormatOption... formatOptionArr) {
        return new FormatEntry(expression, formatOptionArr);
    }

    public static FormatEntry formatEntry(Expression expression) {
        return new FormatEntry(expression, null);
    }

    public static FormatEntry formatEntry(String str, FormatOption... formatOptionArr) {
        return new FormatEntry(literal(str), formatOptionArr);
    }

    public static FormatEntry formatEntry(String str) {
        return new FormatEntry(literal(str), null);
    }

    public static Expression object(Expression expression) {
        return new Expression("object", expression);
    }

    public static Expression toString(Expression expression) {
        return new Expression("to-string", expression);
    }

    public static Expression toNumber(Expression expression) {
        return new Expression("to-number", expression);
    }

    public static Expression toBool(Expression expression) {
        return new Expression("to-boolean", expression);
    }

    public static Expression toColor(Expression expression) {
        return new Expression("to-color", expression);
    }

    public static Expression let(Expression... expressionArr) {
        return new Expression("let", expressionArr);
    }

    public static Expression var(Expression expression) {
        return new Expression("var", expression);
    }

    public static Expression var(String str) {
        return var(literal(str));
    }

    public static Expression zoom() {
        return new Expression("zoom", new Expression[0]);
    }

    public static Stop stop(Object obj, Object obj2) {
        return new Stop(obj, obj2);
    }

    public static Expression step(Number number, Expression expression, Expression... expressionArr) {
        return step(literal(number), expression, expressionArr);
    }

    public static Expression step(Expression expression, Expression expression2, Expression... expressionArr) {
        return new Expression("step", join(new Expression[]{expression, expression2}, expressionArr));
    }

    public static Expression step(Number number, Expression expression, Stop... stopArr) {
        return step(literal(number), expression, Stop.toExpressionArray(stopArr));
    }

    public static Expression step(Expression expression, Expression expression2, Stop... stopArr) {
        return step(expression, expression2, Stop.toExpressionArray(stopArr));
    }

    public static Expression step(Number number, Number number2, Expression... expressionArr) {
        return step(literal(number), number2, expressionArr);
    }

    public static Expression step(Expression expression, Number number, Expression... expressionArr) {
        return step(expression, literal(number), expressionArr);
    }

    public static Expression step(Number number, Number number2, Stop... stopArr) {
        return step(literal(number), number2, Stop.toExpressionArray(stopArr));
    }

    public static Expression step(Expression expression, Number number, Stop... stopArr) {
        return step(expression, number, Stop.toExpressionArray(stopArr));
    }

    public static Expression interpolate(Interpolator interpolator, Expression expression, Expression... expressionArr) {
        return new Expression("interpolate", join(new Expression[]{interpolator, expression}, expressionArr));
    }

    public static Expression interpolate(Interpolator interpolator, Expression expression, Stop... stopArr) {
        return interpolate(interpolator, expression, Stop.toExpressionArray(stopArr));
    }

    public static Interpolator linear() {
        return new Interpolator(Property.RASTER_RESAMPLING_LINEAR, new Expression[0]);
    }

    public static Interpolator exponential(Number number) {
        return exponential(literal(number));
    }

    public static Interpolator exponential(Expression expression) {
        return new Interpolator("exponential", expression);
    }

    public static Interpolator cubicBezier(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        return new Interpolator("cubic-bezier", expression, expression2, expression3, expression4);
    }

    public static Interpolator cubicBezier(Number number, Number number2, Number number3, Number number4) {
        return cubicBezier(literal(number), literal(number2), literal(number3), literal(number4));
    }

    private static Expression[] join(Expression[] expressionArr, Expression[] expressionArr2) {
        Expression[] expressionArr3 = new Expression[(expressionArr.length + expressionArr2.length)];
        System.arraycopy(expressionArr, 0, expressionArr3, 0, expressionArr.length);
        System.arraycopy(expressionArr2, 0, expressionArr3, expressionArr.length, expressionArr2.length);
        return expressionArr3;
    }

    public Object[] toArray() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.operator);
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            for (Expression expression : expressionArr) {
                if (expression instanceof ValueExpression) {
                    arrayList.add(((ValueExpression) expression).toValue());
                } else {
                    arrayList.add(expression.toArray());
                }
            }
        }
        return arrayList.toArray();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[\"");
        sb.append(this.operator);
        sb.append("\"");
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            for (Expression obj : expressionArr) {
                sb.append(", ");
                sb.append(obj.toString());
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static Expression raw(String str) {
        return Converter.convert(str);
    }

    public boolean equals(Object obj) {
        super.equals(obj);
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Expression)) {
            return false;
        }
        Expression expression = (Expression) obj;
        String str = this.operator;
        if (str == null ? expression.operator == null : str.equals(expression.operator)) {
            return Arrays.deepEquals(this.arguments, expression.arguments);
        }
        return false;
    }

    public int hashCode() {
        String str = this.operator;
        return ((str != null ? str.hashCode() : 0) * 31) + Arrays.hashCode(this.arguments);
    }

    private static Object[] toObjectArray(Object obj) {
        int length = java.lang.reflect.Array.getLength(obj);
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = java.lang.reflect.Array.get(obj, i);
        }
        return objArr;
    }
}
