.class public Lcom/apptentive/android/sdk/debug/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static imp:Lcom/apptentive/android/sdk/debug/AssertImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/apptentive/android/sdk/debug/Assert$1;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/debug/Assert$1;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/Assert;->getStackTrace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static assertBackgroundThread()V
    .locals 2

    .line 189
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isMainQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected background thread but was \'main\'"

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertDispatchQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V
    .locals 4
    .param p0    # Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isCurrent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected \'%s\' queue but was \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "<missing queue>"

    :goto_0
    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 155
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected \'%s\' but was \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertFail(Ljava/lang/String;)V
    .locals 1

    .line 209
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs assertFail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/Assert;->assertFail(Ljava/lang/String;)V

    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1

    .line 61
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 62
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v0, "Expected \'false\' but was \'true\'"

    invoke-interface {p0, v0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertFalse(ZLjava/lang/String;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 71
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs assertFalse(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 80
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertMainThread()V
    .locals 5

    .line 180
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isMainQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected \'main\' thread but was \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 161
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected \'%s\' and \'%s\' to differ, but they are the same."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 101
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v0, "Not-null expected"

    invoke-interface {p0, v0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 110
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs assertNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 118
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 119
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 128
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v1, "Expected \'null\' but was \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 137
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs assertNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 145
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 146
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1

    .line 34
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    const-string v0, "Expected \'true\' but was \'false\'"

    invoke-interface {p0, v0}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 53
    sget-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/debug/AssertImp;->assertFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getStackTrace(I)Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 225
    array-length v2, v1

    if-lez v2, :cond_1

    .line 226
    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0xa

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static notNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static setImp(Lcom/apptentive/android/sdk/debug/AssertImp;)V
    .locals 0

    .line 217
    sput-object p0, Lcom/apptentive/android/sdk/debug/Assert;->imp:Lcom/apptentive/android/sdk/debug/AssertImp;

    return-void
.end method
