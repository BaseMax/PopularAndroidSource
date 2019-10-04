.class public Lcom/yandex/metrica/impl/ob/iz;
.super Lcom/yandex/metrica/impl/ob/ix;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final c:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final e:Lcom/yandex/metrica/impl/ob/je;

.field private static final f:Lcom/yandex/metrica/impl/ob/je;

.field private static final g:Lcom/yandex/metrica/impl/ob/je;

.field private static final h:Lcom/yandex/metrica/impl/ob/je;

.field private static final i:Lcom/yandex/metrica/impl/ob/je;

.field private static final j:Lcom/yandex/metrica/impl/ob/je;

.field private static final k:Lcom/yandex/metrica/impl/ob/je;

.field private static final l:Lcom/yandex/metrica/impl/ob/je;

.field private static final m:Lcom/yandex/metrica/impl/ob/je;

.field private static final n:Lcom/yandex/metrica/impl/ob/je;

.field private static final o:Lcom/yandex/metrica/impl/ob/je;

.field private static final p:Lcom/yandex/metrica/impl/ob/je;

.field private static final q:Lcom/yandex/metrica/impl/ob/je;

.field private static final r:Lcom/yandex/metrica/impl/ob/je;

.field private static final s:Lcom/yandex/metrica/impl/ob/je;

.field private static final t:Lcom/yandex/metrica/impl/ob/je;


# instance fields
.field private A:Lcom/yandex/metrica/impl/ob/je;

.field private B:Lcom/yandex/metrica/impl/ob/je;

.field private C:Lcom/yandex/metrica/impl/ob/je;

.field private D:Lcom/yandex/metrica/impl/ob/je;

.field private E:Lcom/yandex/metrica/impl/ob/je;

.field private F:Lcom/yandex/metrica/impl/ob/je;

.field private G:Lcom/yandex/metrica/impl/ob/je;

.field private H:Lcom/yandex/metrica/impl/ob/je;

.field private I:Lcom/yandex/metrica/impl/ob/je;

.field private J:Lcom/yandex/metrica/impl/ob/je;

.field private u:Lcom/yandex/metrica/impl/ob/je;

.field private v:Lcom/yandex/metrica/impl/ob/je;

.field private w:Lcom/yandex/metrica/impl/ob/je;

.field private x:Lcom/yandex/metrica/impl/ob/je;

.field private y:Lcom/yandex/metrica/impl/ob/je;

.field private z:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_ALIVE_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->k:Lcom/yandex/metrica/impl/ob/je;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->m:Lcom/yandex/metrica/impl/ob/je;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->n:Lcom/yandex/metrica/impl/ob/je;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "COLLECT_INSTALLED_APPS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->o:Lcom/yandex/metrica/impl/ob/je;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "IDENTITY_SEND_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->p:Lcom/yandex/metrica/impl/ob/je;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "USER_INFO_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->q:Lcom/yandex/metrica/impl/ob/je;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->r:Lcom/yandex/metrica/impl/ob/je;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->s:Lcom/yandex/metrica/impl/ob/je;

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT_REVISION_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/iz;->t:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->u:Lcom/yandex/metrica/impl/ob/je;

    .line 83
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->v:Lcom/yandex/metrica/impl/ob/je;

    .line 84
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->w:Lcom/yandex/metrica/impl/ob/je;

    .line 85
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->x:Lcom/yandex/metrica/impl/ob/je;

    .line 86
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->y:Lcom/yandex/metrica/impl/ob/je;

    .line 87
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->z:Lcom/yandex/metrica/impl/ob/je;

    .line 91
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->A:Lcom/yandex/metrica/impl/ob/je;

    .line 92
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->B:Lcom/yandex/metrica/impl/ob/je;

    .line 93
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->C:Lcom/yandex/metrica/impl/ob/je;

    .line 94
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->n:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->D:Lcom/yandex/metrica/impl/ob/je;

    .line 97
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->p:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->E:Lcom/yandex/metrica/impl/ob/je;

    .line 98
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->o:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    .line 99
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->q:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->G:Lcom/yandex/metrica/impl/ob/je;

    .line 100
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->r:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->H:Lcom/yandex/metrica/impl/ob/je;

    .line 102
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->s:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    .line 103
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/iz;->t:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->J:Lcom/yandex/metrica/impl/ob/je;

    .line 1275
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2071
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2074
    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 2075
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/iz;->y:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-static {p1, p2, v1}, Lcom/yandex/metrica/impl/ob/jf;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2267
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/iz;->u:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/jf;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2271
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/iz;->w:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/jf;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public a(J)J
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->x:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/yandex/metrica/impl/b$a;
    .locals 6

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->J:Lcom/yandex/metrica/impl/ob/je;

    .line 156
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/yandex/metrica/impl/b$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    .line 158
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/iz;->J:Lcom/yandex/metrica/impl/ob/je;

    .line 160
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 164
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/iz;
    .locals 3

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ix;

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->J:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ix;

    .line 206
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)Ljava/lang/Boolean;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->z:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->G:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)J
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->D:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    .line 182
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->H:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(J)J
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->E:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()Lcom/yandex/metrica/impl/ob/iz;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->H:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/iz;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/iz;

    return-object v0
.end method

.method public d(J)J
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->v:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d()Lcom/yandex/metrica/impl/ob/iz;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/iz;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/iz;

    return-object v0
.end method

.method public e(J)J
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->A:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->x:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->y:Lcom/yandex/metrica/impl/ob/je;

    .line 288
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->z:Lcom/yandex/metrica/impl/ob/je;

    .line 289
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->u:Lcom/yandex/metrica/impl/ob/je;

    .line 290
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->v:Lcom/yandex/metrica/impl/ob/je;

    .line 291
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->w:Lcom/yandex/metrica/impl/ob/je;

    .line 292
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->D:Lcom/yandex/metrica/impl/ob/je;

    .line 293
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->B:Lcom/yandex/metrica/impl/ob/je;

    .line 294
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->A:Lcom/yandex/metrica/impl/ob/je;

    .line 295
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->C:Lcom/yandex/metrica/impl/ob/je;

    .line 296
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    .line 297
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    .line 298
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->G:Lcom/yandex/metrica/impl/ob/je;

    .line 299
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->H:Lcom/yandex/metrica/impl/ob/je;

    .line 300
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->E:Lcom/yandex/metrica/impl/ob/je;

    .line 301
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public f(J)J
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->w:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "_boundentrypreferences"

    return-object v0
.end method

.method public g(J)J
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->C:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->D:Lcom/yandex/metrica/impl/ob/je;

    .line 306
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->C:Lcom/yandex/metrica/impl/ob/je;

    .line 307
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->A:Lcom/yandex/metrica/impl/ob/je;

    .line 308
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->B:Lcom/yandex/metrica/impl/ob/je;

    .line 309
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->x:Lcom/yandex/metrica/impl/ob/je;

    .line 310
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->w:Lcom/yandex/metrica/impl/ob/je;

    .line 311
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->v:Lcom/yandex/metrica/impl/ob/je;

    .line 312
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->u:Lcom/yandex/metrica/impl/ob/je;

    .line 313
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->z:Lcom/yandex/metrica/impl/ob/je;

    .line 314
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->y:Lcom/yandex/metrica/impl/ob/je;

    .line 315
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->G:Lcom/yandex/metrica/impl/ob/je;

    .line 316
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->F:Lcom/yandex/metrica/impl/ob/je;

    .line 317
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->I:Lcom/yandex/metrica/impl/ob/je;

    .line 318
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->J:Lcom/yandex/metrica/impl/ob/je;

    .line 319
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->H:Lcom/yandex/metrica/impl/ob/je;

    .line 320
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iz;->E:Lcom/yandex/metrica/impl/ob/je;

    .line 321
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public h(J)J
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->u:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(J)J
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iz;->B:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method
