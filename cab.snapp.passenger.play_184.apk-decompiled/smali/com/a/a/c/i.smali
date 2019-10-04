.class final Lcom/a/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/i$d;,
        Lcom/a/a/c/i$h;,
        Lcom/a/a/c/i$e;,
        Lcom/a/a/c/i$f;,
        Lcom/a/a/c/i$g;,
        Lcom/a/a/c/i$c;,
        Lcom/a/a/c/i$a;,
        Lcom/a/a/c/i$i;,
        Lcom/a/a/c/i$b;
    }
.end annotation


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:[Ljava/lang/String;


# instance fields
.field final e:Lcom/a/a/c/j;

.field final f:Lcom/a/a/c/h;

.field final g:Lcom/a/a/c/ac;

.field final h:Lcom/a/a/c/a;

.field final i:Lcom/a/a/c/ag$c;

.field final j:Lcom/a/a/c/ag$b;

.field k:Lcom/a/a/c/n;

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Lio/fabric/sdk/android/services/network/d;

.field private final q:Lio/fabric/sdk/android/services/common/IdManager;

.field private final r:Lio/fabric/sdk/android/services/c/a;

.field private final s:Lcom/a/a/c/i$d;

.field private final t:Lcom/a/a/c/v;

.field private final u:Lcom/a/a/c/r;

.field private final v:Lcom/a/a/c/aj;

.field private final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    new-instance v0, Lcom/a/a/c/i$1;

    invoke-direct {v0}, Lcom/a/a/c/i$1;-><init>()V

    sput-object v0, Lcom/a/a/c/i;->a:Ljava/io/FilenameFilter;

    .line 139
    new-instance v0, Lcom/a/a/c/i$8;

    invoke-direct {v0}, Lcom/a/a/c/i$8;-><init>()V

    sput-object v0, Lcom/a/a/c/i;->b:Ljava/util/Comparator;

    .line 146
    new-instance v0, Lcom/a/a/c/i$9;

    invoke-direct {v0}, Lcom/a/a/c/i$9;-><init>()V

    sput-object v0, Lcom/a/a/c/i;->c:Ljava/util/Comparator;

    .line 156
    new-instance v0, Lcom/a/a/c/i$10;

    invoke-direct {v0}, Lcom/a/a/c/i$10;-><init>()V

    sput-object v0, Lcom/a/a/c/i;->d:Ljava/io/FilenameFilter;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/i;->l:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    .line 173
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/i;->m:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    .line 206
    sput-object v0, Lcom/a/a/c/i;->n:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/a/a/c/j;Lcom/a/a/c/h;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/common/IdManager;Lcom/a/a/c/ac;Lio/fabric/sdk/android/services/c/a;Lcom/a/a/c/a;Lcom/a/a/c/al;)V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 238
    iput-object p1, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 239
    iput-object p2, p0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    .line 240
    iput-object p3, p0, Lcom/a/a/c/i;->p:Lio/fabric/sdk/android/services/network/d;

    .line 241
    iput-object p4, p0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    .line 242
    iput-object p5, p0, Lcom/a/a/c/i;->g:Lcom/a/a/c/ac;

    .line 243
    iput-object p6, p0, Lcom/a/a/c/i;->r:Lio/fabric/sdk/android/services/c/a;

    .line 244
    iput-object p7, p0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    .line 246
    invoke-interface {p8}, Lcom/a/a/c/al;->getUnityVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/a/a/c/i;->w:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 249
    new-instance p2, Lcom/a/a/c/i$d;

    invoke-direct {p2, p6}, Lcom/a/a/c/i$d;-><init>(Lio/fabric/sdk/android/services/c/a;)V

    iput-object p2, p0, Lcom/a/a/c/i;->s:Lcom/a/a/c/i$d;

    .line 250
    new-instance p2, Lcom/a/a/c/v;

    iget-object p3, p0, Lcom/a/a/c/i;->s:Lcom/a/a/c/i$d;

    invoke-direct {p2, p1, p3}, Lcom/a/a/c/v;-><init>(Landroid/content/Context;Lcom/a/a/c/v$a;)V

    iput-object p2, p0, Lcom/a/a/c/i;->t:Lcom/a/a/c/v;

    .line 251
    new-instance p2, Lcom/a/a/c/i$f;

    invoke-direct {p2, p0, v1}, Lcom/a/a/c/i$f;-><init>(Lcom/a/a/c/i;B)V

    iput-object p2, p0, Lcom/a/a/c/i;->i:Lcom/a/a/c/ag$c;

    .line 252
    new-instance p2, Lcom/a/a/c/i$g;

    invoke-direct {p2, p0, v1}, Lcom/a/a/c/i$g;-><init>(Lcom/a/a/c/i;B)V

    iput-object p2, p0, Lcom/a/a/c/i;->j:Lcom/a/a/c/ag$b;

    .line 253
    new-instance p2, Lcom/a/a/c/r;

    invoke-direct {p2, p1}, Lcom/a/a/c/r;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/a/a/c/i;->u:Lcom/a/a/c/r;

    .line 254
    new-instance p1, Lcom/a/a/c/y;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/a/a/c/aj;

    new-instance p3, Lcom/a/a/c/ae;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/a/a/c/ae;-><init>(I)V

    aput-object p3, p2, v1

    const/16 p3, 0x400

    invoke-direct {p1, p3, p2}, Lcom/a/a/c/y;-><init>(I[Lcom/a/a/c/aj;)V

    iput-object p1, p0, Lcom/a/a/c/i;->v:Lcom/a/a/c/aj;

    return-void
.end method

.method static synthetic a(Lcom/a/a/c/i;)Lcom/a/a/c/j;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 459
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/a/a/c/e;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close file input stream."

    .line 1283
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1284
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    .line 1284
    invoke-interface {p0, v0, p1, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1291
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1293
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {v1, p0, p1}, Lcom/a/a/c/i;->a(Ljava/io/InputStream;Lcom/a/a/c/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/a/a/c/e;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1264
    sget-object v0, Lcom/a/a/c/i;->n:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1265
    new-instance v5, Lcom/a/a/c/i$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1268
    array-length v6, v5

    const-string v7, " data for session ID "

    const-string v8, "CrashlyticsCore"

    if-nez v6, :cond_0

    .line 1269
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t find "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v5, v8, v4, v6}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1272
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Collecting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v8, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/a/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1090
    new-instance v5, Lcom/a/a/c/ak;

    iget-object v1, v0, Lcom/a/a/c/i;->v:Lcom/a/a/c/aj;

    move-object/from16 v2, p4

    invoke-direct {v5, v2, v1}, Lcom/a/a/c/ak;-><init>(Ljava/lang/Throwable;Lcom/a/a/c/aj;)V

    .line 1093
    iget-object v1, v0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    invoke-virtual {v1}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1094
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 1095
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v16

    .line 1096
    iget-object v4, v0, Lcom/a/a/c/i;->u:Lcom/a/a/c/r;

    .line 1097
    invoke-virtual {v4}, Lcom/a/a/c/r;->isPowerConnected()Z

    move-result v4

    .line 1096
    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/i;->getBatteryVelocity(Landroid/content/Context;Z)I

    move-result v17

    .line 1098
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->getProximitySensorEnabled(Landroid/content/Context;)Z

    move-result v18

    .line 1099
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v13, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1101
    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->getTotalRamInBytes()J

    move-result-wide v6

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->calculateFreeRamInBytes(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v19, v6, v8

    .line 1103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J

    move-result-wide v21

    .line 1106
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lio/fabric/sdk/android/services/common/i;->getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v12

    .line 1107
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1108
    iget-object v7, v5, Lcom/a/a/c/ak;->stacktrace:[Ljava/lang/StackTraceElement;

    .line 1109
    iget-object v4, v0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v15, v4, Lcom/a/a/c/a;->buildId:Ljava/lang/String;

    .line 1110
    iget-object v4, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    if-eqz p6, :cond_1

    .line 1114
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v8

    .line 1115
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Thread;

    .line 1117
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1118
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    aput-object v23, v10, v4

    .line 1119
    iget-object v6, v0, Lcom/a/a/c/i;->v:Lcom/a/a/c/aj;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    invoke-interface {v6, v11}, Lcom/a/a/c/aj;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v8, v10

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    new-array v4, v4, [Ljava/lang/Thread;

    move-object v8, v4

    :goto_1
    const-string v4, "com.crashlytics.CollectCustomKeys"

    .line 1129
    invoke-static {v1, v4, v6}, Lio/fabric/sdk/android/services/common/i;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1130
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_2

    .line 1132
    :cond_2
    iget-object v1, v0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 5644
    iget-object v1, v1, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1133
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 1137
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v10, v4

    goto :goto_3

    :cond_3
    :goto_2
    move-object v10, v1

    .line 1141
    :goto_3
    iget-object v11, v0, Lcom/a/a/c/i;->t:Lcom/a/a/c/v;

    move-object/from16 v1, p1

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v22}, Lcom/a/a/c/ah;->writeSessionEvent(Lcom/a/a/c/e;JLjava/lang/String;Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/a/a/c/v;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    return-void
.end method

.method private static a(Lcom/a/a/c/e;[Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    const-string v0, "CrashlyticsCore"

    .line 1248
    sget-object v1, Lio/fabric/sdk/android/services/common/i;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1250
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1252
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Found Non Fatal for session ID %s in %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    .line 1254
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1253
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1252
    invoke-interface {v5, v0, v6}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-static {p0, v4}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1257
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    const-string v6, "Error writting non-fatal to session."

    .line 1258
    invoke-interface {v5, v0, v6, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/c/i;Lcom/a/a/c/a/a/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CrashlyticsCore"

    const-string v1, "Failed to close fatal exception file output stream."

    const-string v2, "Failed to flush to session begin file."

    const/4 v3, 0x0

    .line 10444
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/c/i;->k()[Ljava/io/File;

    move-result-object v4

    .line 10445
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    aget-object v4, v4, v6

    .line 10446
    invoke-static {v4}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    .line 9891
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string p1, "Tried to write a native crash while no session was open."

    invoke-interface {p0, v0, p1, v3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9924
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 9925
    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 9896
    :cond_1
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<native-crash [%s (%s)]>"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/a/a/c/a/a/d;->signal:Lcom/a/a/c/a/a/e;

    iget-object v9, v9, Lcom/a/a/c/a/a/e;->code:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p1, Lcom/a/a/c/a/a/d;->signal:Lcom/a/a/c/a/a/e;

    iget-object v9, v9, Lcom/a/a/c/a/a/e;->name:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9905
    iget-object v5, p1, Lcom/a/a/c/a/a/d;->binaryImages:[Lcom/a/a/c/a/a/a;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/a/a/c/a/a/d;->binaryImages:[Lcom/a/a/c/a/a/a;

    array-length v5, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    const-string v5, "SessionCrash"

    goto :goto_2

    :cond_3
    const-string v5, "SessionMissingBinaryImages"

    .line 9910
    :goto_2
    new-instance v6, Lcom/a/a/c/d;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9911
    :try_start_2
    invoke-static {v6}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v3

    .line 9913
    new-instance v5, Lcom/a/a/c/x;

    .line 9914
    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/a/a/c/x;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v4}, Lcom/a/a/c/x;->readKeyData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 9915
    new-instance v7, Lcom/a/a/c/v;

    iget-object v8, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 9916
    invoke-virtual {v8}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object p0, p0, Lcom/a/a/c/i;->s:Lcom/a/a/c/i$d;

    invoke-direct {v7, v8, p0, v4}, Lcom/a/a/c/v;-><init>(Landroid/content/Context;Lcom/a/a/c/v$a;Ljava/lang/String;)V

    .line 9918
    invoke-static {p1, v7, v5, v3}, Lcom/a/a/c/aa;->writeNativeCrash(Lcom/a/a/c/a/a/d;Lcom/a/a/c/v;Ljava/util/Map;Lcom/a/a/c/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9924
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 9925
    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v6, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v6, v3

    .line 9921
    :goto_3
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v4, "An error occurred in the native crash logger"

    invoke-interface {p1, v0, v4, p0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9924
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 9925
    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    .line 9924
    :goto_4
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 9925
    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/i;->a(Lio/fabric/sdk/android/services/settings/p;Z)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 14

    const-string v1, "CrashlyticsCore"

    const-string v2, "Failed to close fatal exception file output stream."

    const-string v3, "Failed to flush to session begin file."

    const/4 v4, 0x0

    .line 6840
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/c/i;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6843
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v5, "Tried to write a fatal exception while no session was open."

    invoke-interface {v0, v1, v5, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6857
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6858
    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 6848
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6850
    new-instance v5, Lcom/a/a/c/d;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SessionCrash"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6851
    :try_start_2
    invoke-static {v5}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v4

    const-string v12, "crash"

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, v4

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 6852
    invoke-direct/range {v7 .. v13}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6857
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6858
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v4

    .line 6854
    :goto_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "An error occurred in the fatal exception logger"

    invoke-interface {v6, v1, v7, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6857
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6858
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 6857
    :goto_1
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6858
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/a/a/c/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 1305
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p2

    sub-int/2addr v1, v0

    .line 1306
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 1310
    :cond_0
    invoke-virtual {p1, p2}, Lcom/a/a/c/e;->writeRawBytes([B)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 666
    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/a/a/c/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/a/a/c/i;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, p1}, Lcom/a/a/c/an;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1400
    const-class v0, Lcom/a/a/a/b;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    if-nez v0, :cond_0

    .line 1402
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v0, "Answers is not available"

    invoke-interface {p0, p1, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1405
    :cond_0
    new-instance v1, Lio/fabric/sdk/android/services/common/j$a;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/b;->onException(Lio/fabric/sdk/android/services/common/j$a;)V

    return-void
.end method

.method private a([Ljava/io/File;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-string v4, "Failed to close CLS file"

    const-string v5, "Error flushing session file stream"

    .line 559
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v6, "CrashlyticsCore"

    const-string v7, "Closing open sessions."

    invoke-interface {v0, v6, v7}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, p2

    .line 561
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_b

    .line 562
    aget-object v0, v2, v7

    .line 564
    invoke-static {v0}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 566
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Closing session: "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Collecting session parts for ID "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    new-instance v9, Lcom/a/a/c/i$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "SessionCrash"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 3159
    array-length v12, v9

    if-lez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    .line 3160
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v8, v11, v10

    .line 3161
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v11, v17

    const-string v10, "Session %s has fatal exception: %s"

    .line 3160
    invoke-static {v14, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v6, v10}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    new-instance v10, Lcom/a/a/c/i$b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "SessionEvent"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 3165
    array-length v11, v10

    if-lez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 3166
    :goto_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v14

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    .line 3167
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v15, v18

    move/from16 v17, v7

    const-string v7, "Session %s has non-fatal exceptions: %s"

    .line 3166
    invoke-static {v2, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v6, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_3

    if-eqz v11, :cond_2

    goto :goto_3

    .line 3175
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "No events present for session ID "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3176
    invoke-interface {v0, v6, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3733
    :cond_3
    :goto_3
    array-length v2, v10

    if-le v2, v3, :cond_4

    .line 3734
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 3736
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v11, v14

    const-string v10, "Trimming down to %d logged exceptions."

    .line 3735
    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3734
    invoke-interface {v2, v6, v7}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    invoke-direct {v1, v8, v3}, Lcom/a/a/c/i;->a(Ljava/lang/String;I)V

    .line 3738
    new-instance v2, Lcom/a/a/c/i$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    :cond_4
    const/4 v2, 0x0

    const/16 v16, 0x0

    if-eqz v12, :cond_5

    .line 3172
    aget-object v7, v9, v16

    goto :goto_4

    :cond_5
    move-object v7, v2

    :goto_4
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_7

    .line 4192
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->e()Ljava/io/File;

    move-result-object v11

    goto :goto_6

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->f()Ljava/io/File;

    move-result-object v11

    .line 4193
    :goto_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_8

    .line 4194
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 4199
    :cond_8
    :try_start_0
    new-instance v12, Lcom/a/a/c/d;

    invoke-direct {v12, v11, v8}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4200
    :try_start_1
    invoke-static {v12}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v2

    .line 4202
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v11

    const-string v13, "Collecting SessionStart data for session ID "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v6, v13}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    invoke-static {v2, v0}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/io/File;)V

    const/4 v0, 0x4

    .line 4206
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v2, v0, v13, v14}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    const/4 v0, 0x5

    .line 4207
    invoke-virtual {v2, v0, v9}, Lcom/a/a/c/e;->writeBool(IZ)V

    const/16 v0, 0xb

    const/4 v11, 0x1

    .line 4209
    invoke-virtual {v2, v0, v11}, Lcom/a/a/c/e;->writeUInt32(II)V

    const/16 v0, 0xc

    const/4 v11, 0x3

    .line 4211
    invoke-virtual {v2, v0, v11}, Lcom/a/a/c/e;->writeEnum(II)V

    .line 4213
    invoke-direct {v1, v2, v8}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/lang/String;)V

    .line 4215
    invoke-static {v2, v10, v8}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v9, :cond_9

    .line 4218
    invoke-static {v2, v7}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4228
    :cond_9
    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4237
    invoke-static {v12, v4}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v12, v2

    .line 4221
    :goto_7
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v7

    const-string v9, "Failed to write session file for session ID: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v6, v9, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4228
    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    if-eqz v12, :cond_a

    .line 4589
    :try_start_3
    invoke-virtual {v12}, Lcom/a/a/c/d;->closeInProgressStream()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 4591
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v7, "Error closing session file stream in the presence of an exception"

    invoke-interface {v0, v6, v7, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3179
    :cond_a
    :goto_8
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Removing session part files for ID "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3180
    invoke-interface {v0, v6, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    invoke-direct {v1, v8}, Lcom/a/a/c/i;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 4228
    :goto_9
    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4237
    invoke-static {v12, v4}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method

.method private static a([Ljava/io/File;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 707
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 708
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 709
    sget-object v4, Lcom/a/a/c/i;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 711
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const-string v6, "CrashlyticsCore"

    if-nez v5, :cond_0

    .line 712
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Deleting unknown file: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v6, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 717
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 718
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 719
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Trimming session file: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-interface {v4, v6, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/s;)Z
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/a/a/c/i;->a(Lio/fabric/sdk/android/services/settings/s;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/a/a/c/i;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 645
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/c/i;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/a/a/c/i;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Failed to close session device file."

    const-string v2, "Failed to flush session device info."

    const-string v3, "Failed to close session OS file."

    const-string v4, "Failed to flush to session OS file."

    const-string v5, "Failed to close session app file."

    const-string v6, "Failed to flush to session app file."

    const-string v7, "Failed to close begin session file."

    const-string v8, "Failed to flush to session begin file."

    .line 7504
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 7505
    new-instance v10, Lcom/a/a/c/c;

    iget-object v11, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-direct {v10, v11}, Lcom/a/a/c/c;-><init>(Lio/fabric/sdk/android/services/common/IdManager;)V

    invoke-virtual {v10}, Lcom/a/a/c/c;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7507
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Opening a new session with ID "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CrashlyticsCore"

    invoke-interface {v11, v13, v12}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7980
    :try_start_0
    new-instance v12, Lcom/a/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "BeginSession"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 7981
    :try_start_1
    invoke-static {v12}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 7983
    :try_start_2
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "Crashlytics Android SDK/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 7984
    invoke-virtual {v1}, Lcom/a/a/c/j;->getVersion()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v16

    .line 7983
    invoke-static {v14, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7985
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    div-long v14, v14, v18

    .line 7987
    invoke-static {v13, v10, v1, v14, v15}, Lcom/a/a/c/ah;->writeBeginSession(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 7989
    invoke-static {v13, v8}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 7990
    invoke-static {v12, v7}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 7998
    :try_start_3
    new-instance v11, Lcom/a/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SessionApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v1, v7}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 7999
    :try_start_4
    invoke-static {v11}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 8001
    :try_start_5
    iget-object v7, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v7}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v19

    .line 8002
    iget-object v7, v0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v7, v7, Lcom/a/a/c/a;->versionCode:Ljava/lang/String;

    .line 8003
    iget-object v8, v0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v8, v8, Lcom/a/a/c/a;->versionName:Ljava/lang/String;

    .line 8004
    iget-object v9, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v9}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v23

    .line 8005
    iget-object v9, v0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v9, v9, Lcom/a/a/c/a;->installerPackageName:Ljava/lang/String;

    .line 8006
    invoke-static {v9}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v9

    invoke-virtual {v9}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v24

    .line 8008
    iget-object v9, v0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v9, v9, Lcom/a/a/c/a;->apiKey:Ljava/lang/String;

    iget-object v12, v0, Lcom/a/a/c/i;->w:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v25, v12

    invoke-static/range {v18 .. v25}, Lcom/a/a/c/ah;->writeSessionApp(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 8011
    invoke-static {v1, v6}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8012
    invoke-static {v11, v5}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8021
    :try_start_6
    new-instance v11, Lcom/a/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SessionOS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v1, v5}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 8022
    :try_start_7
    invoke-static {v11}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 8024
    :try_start_8
    iget-object v5, v0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    invoke-virtual {v5}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lio/fabric/sdk/android/services/common/i;->isRooted(Landroid/content/Context;)Z

    move-result v5

    .line 8026
    invoke-static {v1, v5}, Lcom/a/a/c/ah;->writeSessionOS(Lcom/a/a/c/e;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 8028
    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8029
    invoke-static {v11, v3}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8038
    :try_start_9
    new-instance v11, Lcom/a/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SessionDevice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v1, v3}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 8039
    :try_start_a
    invoke-static {v11}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 8041
    :try_start_b
    iget-object v3, v0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    invoke-virtual {v3}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8042
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 8044
    iget-object v5, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceUUID()Ljava/lang/String;

    move-result-object v19

    .line 8045
    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->getCpuArchitectureInt()I

    move-result v20

    .line 8046
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v22

    .line 8047
    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->getTotalRamInBytes()J

    move-result-wide v23

    .line 8048
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v7, v4

    mul-long v25, v5, v7

    .line 8049
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/i;->isEmulator(Landroid/content/Context;)Z

    move-result v27

    .line 8051
    iget-object v4, v0, Lcom/a/a/c/i;->q:Lio/fabric/sdk/android/services/common/IdManager;

    .line 8052
    invoke-virtual {v4}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v28

    .line 8053
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/i;->getDeviceState(Landroid/content/Context;)I

    move-result v29

    .line 8055
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v30, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v31, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v18, v1

    invoke-static/range {v18 .. v31}, Lcom/a/a/c/ah;->writeSessionDevice(Lcom/a/a/c/e;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 8059
    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    move-object/from16 v3, v17

    .line 8060
    invoke-static {v11, v3}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 7514
    iget-object v0, v0, Lcom/a/a/c/i;->t:Lcom/a/a/c/v;

    invoke-virtual {v0, v10}, Lcom/a/a/c/v;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, v17

    const/4 v1, 0x0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v3, v17

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 8059
    :goto_0
    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8060
    invoke-static {v11, v3}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1

    :catchall_5
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 8028
    :goto_1
    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8029
    invoke-static {v11, v3}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_2

    :catchall_7
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2

    :catchall_8
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 8011
    :goto_2
    invoke-static {v1, v6}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8012
    invoke-static {v11, v5}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_4

    :catchall_a
    move-exception v0

    goto :goto_3

    :catchall_b
    move-exception v0

    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    .line 7989
    :goto_4
    invoke-static {v13, v8}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 7990
    invoke-static {v12, v7}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/s;)V
    .locals 7

    if-nez p1, :cond_0

    .line 8371
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v0, "Cannot send reports. Settings are unavailable."

    invoke-interface {p0, p1, v0}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8376
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    invoke-virtual {v0}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8377
    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/s;->appData:Lio/fabric/sdk/android/services/settings/e;

    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/e;->reportsUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/a/a/c/i;->a(Ljava/lang/String;)Lcom/a/a/c/p;

    move-result-object p1

    .line 8378
    new-instance v1, Lcom/a/a/c/ag;

    iget-object v2, p0, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v2, v2, Lcom/a/a/c/a;->apiKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c/i;->i:Lcom/a/a/c/ag$c;

    iget-object v4, p0, Lcom/a/a/c/i;->j:Lcom/a/a/c/ag$b;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/a/a/c/ag;-><init>(Ljava/lang/String;Lcom/a/a/c/p;Lcom/a/a/c/ag$c;Lcom/a/a/c/ag$b;)V

    .line 8381
    invoke-virtual {p0}, Lcom/a/a/c/i;->a()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 8382
    new-instance v5, Lcom/a/a/c/ai;

    sget-object v6, Lcom/a/a/c/i;->m:Ljava/util/Map;

    invoke-direct {v5, v4, v6}, Lcom/a/a/c/ai;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 8384
    iget-object v4, p0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v6, Lcom/a/a/c/i$h;

    invoke-direct {v6, v0, v5, v1}, Lcom/a/a/c/i$h;-><init>(Landroid/content/Context;Lcom/a/a/c/af;Lcom/a/a/c/ag;)V

    invoke-virtual {v4, v6}, Lcom/a/a/c/h;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 15

    move-object v8, p0

    const-string v9, "Failed to close non-fatal file output stream."

    const-string v10, "Failed to flush to non-fatal file."

    .line 8933
    invoke-direct {p0}, Lcom/a/a/c/i;->i()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const-string v12, "CrashlyticsCore"

    if-nez v11, :cond_0

    .line 8936
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 8941
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9391
    const-class v2, Lcom/a/a/a/b;

    invoke-static {v2}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    if-nez v2, :cond_1

    .line 9393
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Answers is not available"

    invoke-interface {v0, v12, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9396
    :cond_1
    new-instance v3, Lio/fabric/sdk/android/services/common/j$b;

    invoke-direct {v3, v11, v0}, Lio/fabric/sdk/android/services/common/j$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/a/a/a/b;->onException(Lio/fabric/sdk/android/services/common/j$b;)V

    .line 8946
    :goto_0
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8948
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8946
    invoke-interface {v0, v12, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8950
    iget-object v0, v8, Lcom/a/a/c/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8951
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 8950
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->padWithZerosToMaxIntWidth(I)Ljava/lang/String;

    move-result-object v0

    .line 8952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8954
    new-instance v13, Lcom/a/a/c/d;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8956
    :try_start_1
    invoke-static {v13}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v6, "error"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 8957
    invoke-direct/range {v1 .. v7}, Lcom/a/a/c/i;->a(Lcom/a/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8962
    invoke-static {v14, v10}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v1

    .line 8959
    :goto_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "An error occurred in the non-fatal exception logger"

    invoke-interface {v2, v12, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8962
    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8963
    :goto_2
    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 8969
    :try_start_4
    invoke-direct {p0, v11, v0}, Lcom/a/a/c/i;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 8971
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "An error occurred when trimming non-fatal files."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 8962
    :goto_3
    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8963
    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 4609
    new-instance v0, Lcom/a/a/c/i$i;

    invoke-direct {v0, p1}, Lcom/a/a/c/i$i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 600
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 601
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/a/a/c/i;)Lcom/a/a/c/v;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/a/a/c/i;->t:Lcom/a/a/c/v;

    return-object p0
.end method

.method static synthetic d(Lcom/a/a/c/i;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/a/a/c/i;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .locals 1

    .line 59
    sget-object v0, Lcom/a/a/c/i;->l:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/a/a/c/i;->k()[Ljava/io/File;

    move-result-object v0

    .line 435
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 436
    invoke-static {v0}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private j()[Ljava/io/File;
    .locals 2

    .line 624
    new-instance v0, Lcom/a/a/c/i$b;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/a/a/c/i$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private k()[Ljava/io/File;
    .locals 2

    .line 628
    invoke-direct {p0}, Lcom/a/a/c/i;->j()[Ljava/io/File;

    move-result-object v0

    .line 629
    sget-object v1, Lcom/a/a/c/i;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/a/a/c/p;
    .locals 4

    .line 1361
    iget-object v0, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    invoke-virtual {v0}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    .line 1363
    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Lcom/a/a/c/q;

    iget-object v2, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    iget-object v3, p0, Lcom/a/a/c/i;->p:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/a/a/c/q;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    return-object v1
.end method

.method final a(JLjava/lang/String;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v1, Lcom/a/a/c/i$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/a/a/c/i$13;-><init>(Lcom/a/a/c/i;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final a(Lio/fabric/sdk/android/services/settings/p;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close session user file."

    const-string v1, "Failed to flush session user file."

    add-int/lit8 v2, p2, 0x8

    .line 1691
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1693
    invoke-direct {p0}, Lcom/a/a/c/i;->k()[Ljava/io/File;

    move-result-object v4

    .line 1694
    array-length v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 1697
    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 1698
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1701
    :cond_0
    iget-object v2, p0, Lcom/a/a/c/i;->t:Lcom/a/a/c/v;

    invoke-virtual {v2, v3}, Lcom/a/a/c/v;->a(Ljava/util/Set;)V

    .line 1703
    new-instance v2, Lcom/a/a/c/i$a;

    invoke-direct {v2, v5}, Lcom/a/a/c/i$a;-><init>(B)V

    invoke-virtual {p0, v2}, Lcom/a/a/c/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/a/a/c/i;->a([Ljava/io/File;Ljava/util/Set;)V

    .line 530
    invoke-direct {p0}, Lcom/a/a/c/i;->k()[Ljava/io/File;

    move-result-object v2

    .line 532
    array-length v3, v2

    const-string v4, "CrashlyticsCore"

    if-gt v3, p2, :cond_1

    .line 533
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-interface {p1, v4, p2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 537
    :cond_1
    aget-object v3, v2, p2

    .line 538
    invoke-static {v3}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 2068
    :try_start_0
    new-instance v6, Lcom/a/a/c/d;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "SessionUser"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/a/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2069
    :try_start_1
    invoke-static {v6}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;

    move-result-object v5

    .line 2323
    invoke-virtual {p0}, Lcom/a/a/c/i;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v3, Lcom/a/a/c/am;

    iget-object v7, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 2325
    invoke-virtual {v7}, Lcom/a/a/c/j;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 2326
    invoke-virtual {v8}, Lcom/a/a/c/j;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    .line 2327
    invoke-virtual {v9}, Lcom/a/a/c/j;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v8, v9}, Lcom/a/a/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/a/a/c/x;

    .line 2328
    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/a/a/c/x;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v3}, Lcom/a/a/c/x;->readUserData(Ljava/lang/String;)Lcom/a/a/c/am;

    move-result-object v3

    .line 2074
    :goto_1
    invoke-virtual {v3}, Lcom/a/a/c/am;->isEmpty()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 2081
    :goto_2
    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 2082
    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3

    .line 2078
    :cond_3
    :try_start_2
    iget-object v7, v3, Lcom/a/a/c/am;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/a/a/c/am;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/a/a/c/am;->email:Ljava/lang/String;

    invoke-static {v5, v7, v8, v3}, Lcom/a/a/c/ah;->writeSessionUser(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    if-nez p1, :cond_4

    .line 545
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string p2, "Unable to close session. Settings are not loaded."

    invoke-interface {p1, v4, p2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 550
    :cond_4
    iget p1, p1, Lio/fabric/sdk/android/services/settings/p;->maxCustomExceptionEvents:I

    invoke-direct {p0, v2, p2, p1}, Lcom/a/a/c/i;->a([Ljava/io/File;II)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v6, v5

    .line 2081
    :goto_4
    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/common/i;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 2082
    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v1, Lcom/a/a/c/i$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/a/a/c/i$15;-><init>(Lcom/a/a/c/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/a/a/c/i;->u:Lcom/a/a/c/r;

    invoke-virtual {v0}, Lcom/a/a/c/r;->dispose()V

    .line 284
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v2, Lcom/a/a/c/i$12;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/a/a/c/i$12;-><init>(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/a/a/c/h;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Lio/fabric/sdk/android/services/settings/s;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1356
    :cond_0
    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/s;->featuresData:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean p1, p1, Lio/fabric/sdk/android/services/settings/m;->promptEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/a/a/c/i;->g:Lcom/a/a/c/ac;

    .line 6050
    iget-object p1, p1, Lcom/a/a/c/ac;->a:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {p1}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "always_send_reports_opt_in"

    .line 6051
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method final a()[Ljava/io/File;
    .locals 3

    .line 613
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 615
    invoke-virtual {p0}, Lcom/a/a/c/i;->e()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/a/a/c/i;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/a/a/c/i;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 614
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {p0}, Lcom/a/a/c/i;->f()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/a/a/c/i;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/a/a/c/i;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/a/a/c/i;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/a/a/c/i;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 620
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method final a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/c/i;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method final b()V
    .locals 6

    .line 806
    invoke-virtual {p0}, Lcom/a/a/c/i;->g()Ljava/io/File;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 811
    :cond_0
    new-instance v1, Lcom/a/a/c/i$c;

    invoke-direct {v1}, Lcom/a/a/c/i$c;-><init>()V

    invoke-static {v0, v1}, Lcom/a/a/c/i;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 814
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 816
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 819
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 820
    aget-object v4, v1, v3

    .line 821
    invoke-static {v4}, Lcom/a/a/c/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 820
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4649
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/i;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 824
    invoke-static {v0, v2}, Lcom/a/a/c/i;->a([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method final c()Z
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/a/a/c/i;->k:Lcom/a/a/c/n;

    if-eqz v0, :cond_0

    .line 6044
    iget-object v0, v0, Lcom/a/a/c/n;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()Ljava/io/File;
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/a/a/c/i;->r:Lio/fabric/sdk/android/services/c/a;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/a;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/io/File;
    .locals 3

    .line 1340
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "fatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final f()Ljava/io/File;
    .locals 3

    .line 1344
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "nonfatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final g()Ljava/io/File;
    .locals 3

    .line 1348
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
