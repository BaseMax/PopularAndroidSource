.class public Lcom/webengage/sdk/android/utils/WebEngageConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/utils/WebEngageConstant$b;,
        Lcom/webengage/sdk/android/utils/WebEngageConstant$a;,
        Lcom/webengage/sdk/android/utils/WebEngageConstant$c;,
        Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;,
        Lcom/webengage/sdk/android/utils/WebEngageConstant$d;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/utils/WebEngageConstant$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "WebEngage"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->b:Ljava/util/List;

    new-instance v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const-string v3, "notificationRuleList"

    const-string v4, "notificationEncId"

    invoke-direct {v1, v3, v4, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->b:Ljava/util/List;

    new-instance v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const-string v3, "surveyRuleList"

    const-string v4, "surveyEncId"

    invoke-direct {v1, v3, v4, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "view"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "click"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "close"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "view_session"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "close_session"

    aput-object v3, v0, v1

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_item_view"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_rating_submitted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_rerender"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_received"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "push_notification_view"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "geofence_transition"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "gcm_registered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "app_upgraded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    const-string v1, "app_installed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
