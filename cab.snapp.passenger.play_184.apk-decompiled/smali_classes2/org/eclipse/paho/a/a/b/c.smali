.class public Lorg/eclipse/paho/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MQTT_CLIENT_MSG_CAT:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/eclipse/paho/a/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/b/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lorg/eclipse/paho/a/a/b/c;->b:Ljava/lang/String;

    .line 52
    const-class v0, Lorg/eclipse/paho/a/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;
    .locals 1

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/a/a/b/b;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    invoke-interface {p0, p1, p2, v0}, Lorg/eclipse/paho/a/a/b/b;->initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_1
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;
    .locals 2

    .line 65
    sget-object v0, Lorg/eclipse/paho/a/a/b/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lorg/eclipse/paho/a/a/b/c;->c:Ljava/lang/String;

    .line 72
    :cond_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/eclipse/paho/a/a/b/c;->a(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 76
    :cond_1
    new-instance p0, Ljava/util/MissingResourceException;

    sget-object v0, Lorg/eclipse/paho/a/a/b/c;->a:Ljava/lang/String;

    const-string v1, "Error locating the logging class"

    invoke-direct {p0, v1, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static getLoggingProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.util.logging.LogManager"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLogManager"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getProperty"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 137
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 138
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static setLogger(Ljava/lang/String;)V
    .locals 0

    .line 153
    sput-object p0, Lorg/eclipse/paho/a/a/b/c;->b:Ljava/lang/String;

    return-void
.end method
