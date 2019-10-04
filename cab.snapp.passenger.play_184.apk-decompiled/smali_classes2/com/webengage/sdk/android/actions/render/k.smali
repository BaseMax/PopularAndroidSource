.class Lcom/webengage/sdk/android/actions/render/k;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;)Lcom/webengage/sdk/android/callbacks/CustomPushRender;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/render/k$1;->a:[I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/webengage/sdk/android/actions/render/l;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/l;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/webengage/sdk/android/actions/render/e;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/e;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/webengage/sdk/android/actions/render/c;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/c;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/webengage/sdk/android/actions/render/d;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/d;-><init>()V

    return-object p0
.end method

.method static b(Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;)Lcom/webengage/sdk/android/callbacks/CustomPushRerender;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/render/k$1;->a:[I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/webengage/sdk/android/actions/render/l;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/l;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/webengage/sdk/android/actions/render/e;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/e;-><init>()V

    return-object p0
.end method
