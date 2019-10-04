package com.adjust.sdk;

import android.net.Uri;
import com.google.android.gms.measurement.AppMeasurement;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.t;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.a.b;

public class UtilNetworking {
    private static String userAgent;

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }

    public static void setUserAgent(String str) {
        userAgent = str;
    }

    public static ResponseData createPOSTHttpsURLConnection(String str, ActivityPackage activityPackage, int i) throws Exception {
        DataOutputStream dataOutputStream = null;
        try {
            HttpsURLConnection httpsURLConnection = AdjustFactory.getHttpsURLConnection(new URL(str));
            HashMap hashMap = new HashMap(activityPackage.getParameters());
            String extractAppSecret = extractAppSecret(hashMap);
            String extractSecretId = extractSecretId(hashMap);
            setDefaultHttpsUrlConnectionProperties(httpsURLConnection, activityPackage.getClientSdk());
            String buildAuthorizationHeader = buildAuthorizationHeader(hashMap, extractAppSecret, extractSecretId, activityPackage.getActivityKind().toString());
            if (buildAuthorizationHeader != null) {
                httpsURLConnection.setRequestProperty(c.HEADER_AUTHORIZATION, buildAuthorizationHeader);
            }
            httpsURLConnection.setRequestMethod(c.METHOD_POST);
            httpsURLConnection.setUseCaches(false);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream2 = new DataOutputStream(httpsURLConnection.getOutputStream());
            try {
                dataOutputStream2.writeBytes(getPostDataString(hashMap, i));
                ResponseData readHttpResponse = readHttpResponse(httpsURLConnection, activityPackage);
                try {
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                } catch (Exception unused) {
                }
                return readHttpResponse;
            } catch (Exception e) {
                e = e;
                dataOutputStream = dataOutputStream2;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = dataOutputStream2;
                if (dataOutputStream != null) {
                    try {
                        dataOutputStream.flush();
                        dataOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            throw e;
        }
    }

    public static ResponseData createGETHttpsURLConnection(ActivityPackage activityPackage) throws Exception {
        try {
            HashMap hashMap = new HashMap(activityPackage.getParameters());
            String extractAppSecret = extractAppSecret(hashMap);
            String extractSecretId = extractSecretId(hashMap);
            HttpsURLConnection httpsURLConnection = AdjustFactory.getHttpsURLConnection(new URL(buildUri(activityPackage.getPath(), hashMap).toString()));
            String buildAuthorizationHeader = buildAuthorizationHeader(hashMap, extractAppSecret, extractSecretId, activityPackage.getActivityKind().toString());
            if (buildAuthorizationHeader != null) {
                httpsURLConnection.setRequestProperty(c.HEADER_AUTHORIZATION, buildAuthorizationHeader);
            }
            setDefaultHttpsUrlConnectionProperties(httpsURLConnection, activityPackage.getClientSdk());
            httpsURLConnection.setRequestMethod("GET");
            return readHttpResponse(httpsURLConnection, activityPackage);
        } catch (Exception e) {
            throw e;
        }
    }

    private static ResponseData readHttpResponse(HttpsURLConnection httpsURLConnection, ActivityPackage activityPackage) throws Exception {
        InputStream inputStream;
        org.a.c cVar;
        StringBuffer stringBuffer = new StringBuffer();
        ILogger logger = getLogger();
        ResponseData buildResponseData = ResponseData.buildResponseData(activityPackage);
        try {
            httpsURLConnection.connect();
            Integer valueOf = Integer.valueOf(httpsURLConnection.getResponseCode());
            if (valueOf.intValue() >= 400) {
                inputStream = httpsURLConnection.getErrorStream();
            } else {
                inputStream = httpsURLConnection.getInputStream();
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
            }
            if (httpsURLConnection != null) {
                httpsURLConnection.disconnect();
            }
            String stringBuffer2 = stringBuffer.toString();
            logger.verbose("Response: %s", stringBuffer2);
            if (!(stringBuffer2 == null || stringBuffer2.length() == 0)) {
                try {
                    cVar = new org.a.c(stringBuffer2);
                } catch (b e) {
                    String formatString = Util.formatString("Failed to parse json response. (%s)", e.getMessage());
                    logger.error(formatString, new Object[0]);
                    buildResponseData.message = formatString;
                    cVar = null;
                }
                if (cVar == null) {
                    return buildResponseData;
                }
                buildResponseData.jsonResponse = cVar;
                String optString = cVar.optString(t.PROMPT_MESSAGE_KEY, null);
                buildResponseData.message = optString;
                buildResponseData.timestamp = cVar.optString(AppMeasurement.d.TIMESTAMP, null);
                buildResponseData.adid = cVar.optString("adid", null);
                if (optString == null) {
                    optString = "No message found";
                }
                if (valueOf == null || valueOf.intValue() != 200) {
                    logger.error("%s", optString);
                } else {
                    logger.info("%s", optString);
                    buildResponseData.success = true;
                }
            }
            return buildResponseData;
        } catch (Exception e2) {
            logger.error("Failed to read response. (%s)", e2.getMessage());
            throw e2;
        } catch (Throwable th) {
            if (httpsURLConnection != null) {
                httpsURLConnection.disconnect();
            }
            throw th;
        }
    }

    private static String getPostDataString(Map<String, String> map, int i) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry next : map.entrySet()) {
            String encode = URLEncoder.encode((String) next.getKey(), "UTF-8");
            String str = (String) next.getValue();
            String encode2 = str != null ? URLEncoder.encode(str, "UTF-8") : "";
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(encode);
            sb.append("=");
            sb.append(encode2);
        }
        String format = Util.dateFormatter.format(Long.valueOf(System.currentTimeMillis()));
        sb.append("&");
        sb.append(URLEncoder.encode("sent_at", "UTF-8"));
        sb.append("=");
        sb.append(URLEncoder.encode(format, "UTF-8"));
        if (i > 0) {
            sb.append("&");
            sb.append(URLEncoder.encode("queue_size", "UTF-8"));
            sb.append("=");
            sb.append(URLEncoder.encode(String.valueOf(i), "UTF-8"));
        }
        return sb.toString();
    }

    private static void setDefaultHttpsUrlConnectionProperties(HttpsURLConnection httpsURLConnection, String str) {
        httpsURLConnection.setRequestProperty("Client-SDK", str);
        httpsURLConnection.setConnectTimeout(60000);
        httpsURLConnection.setReadTimeout(60000);
        String str2 = userAgent;
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("User-Agent", str2);
        }
    }

    private static Uri buildUri(String str, Map<String, String> map) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(Constants.SCHEME);
        builder.authority(Constants.AUTHORITY);
        builder.appendPath(str);
        for (Map.Entry next : map.entrySet()) {
            builder.appendQueryParameter((String) next.getKey(), (String) next.getValue());
        }
        builder.appendQueryParameter("sent_at", Util.dateFormatter.format(Long.valueOf(System.currentTimeMillis())));
        return builder.build();
    }

    private static String extractAppSecret(Map<String, String> map) {
        return map.remove("app_secret");
    }

    private static String extractSecretId(Map<String, String> map) {
        return map.remove("secret_id");
    }

    private static String buildAuthorizationHeader(Map<String, String> map, String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Map<String, String> signature = getSignature(map, str3, str);
        String sha256 = Util.sha256(signature.get("clear_signature"));
        String formatString = Util.formatString("Signature %s,%s,%s,%s", Util.formatString("secret_id=\"%s\"", str2), Util.formatString("signature=\"%s\"", sha256), Util.formatString("algorithm=\"%s\"", "sha256"), Util.formatString("headers=\"%s\"", signature.get("fields")));
        getLogger().verbose("authorizationHeader: %s", formatString);
        return formatString;
    }

    private static Map<String, String> getSignature(Map<String, String> map, String str, String str2) {
        String validIdentifier = getValidIdentifier(map);
        HashMap hashMap = new HashMap();
        hashMap.put("app_secret", str2);
        hashMap.put("created_at", map.get("created_at"));
        hashMap.put("activity_kind", str);
        hashMap.put(validIdentifier, map.get(validIdentifier));
        String str3 = "";
        String str4 = str3;
        for (Map.Entry value : hashMap.entrySet()) {
            if (value.getValue() != null) {
                str3 = str3 + ((String) value.getKey()) + " ";
                str4 = str4 + ((String) value.getValue());
            }
        }
        String substring = str3.substring(0, str3.length() - 1);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("clear_signature", str4);
        hashMap2.put("fields", substring);
        return hashMap2;
    }

    private static String getValidIdentifier(Map<String, String> map) {
        if (map.get("gps_adid") != null) {
            return "gps_adid";
        }
        if (map.get("fire_adid") != null) {
            return "fire_adid";
        }
        if (map.get("android_id") != null) {
            return "android_id";
        }
        if (map.get("mac_sha1") != null) {
            return "mac_sha1";
        }
        if (map.get("mac_md5") != null) {
            return "mac_md5";
        }
        if (map.get("android_uuid") != null) {
            return "android_uuid";
        }
        return null;
    }
}
