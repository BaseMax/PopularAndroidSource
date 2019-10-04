.class public Lcom/yandex/metrica/impl/ob/jc;
.super Lcom/yandex/metrica/impl/ob/ix;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final c:Lcom/yandex/metrica/impl/ob/je;

.field static final d:Lcom/yandex/metrica/impl/ob/je;

.field static final e:Lcom/yandex/metrica/impl/ob/je;

.field static final f:Lcom/yandex/metrica/impl/ob/je;

.field private static final g:Lcom/yandex/metrica/impl/ob/je;

.field private static final h:Lcom/yandex/metrica/impl/ob/je;

.field private static final i:Lcom/yandex/metrica/impl/ob/je;

.field private static final j:Lcom/yandex/metrica/impl/ob/je;

.field private static final k:Lcom/yandex/metrica/impl/ob/je;

.field private static final l:Lcom/yandex/metrica/impl/ob/je;

.field private static final m:Lcom/yandex/metrica/impl/ob/je;

.field private static final n:Lcom/yandex/metrica/impl/ob/je;


# instance fields
.field private o:Lcom/yandex/metrica/impl/ob/je;

.field private p:Lcom/yandex/metrica/impl/ob/je;

.field private q:Lcom/yandex/metrica/impl/ob/je;

.field private r:Lcom/yandex/metrica/impl/ob/je;

.field private s:Lcom/yandex/metrica/impl/ob/je;

.field private t:Lcom/yandex/metrica/impl/ob/je;

.field private u:Lcom/yandex/metrica/impl/ob/je;

.field private v:Lcom/yandex/metrica/impl/ob/je;

.field private w:Lcom/yandex/metrica/impl/ob/je;

.field private x:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_DEVICE_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_UID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_HOST_URL_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_REPORT_URL_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_GET_AD_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_REPORT_AD_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_STARTUP_OBTAIN_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->k:Lcom/yandex/metrica/impl/ob/je;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_STARTUP_ENCODED_CLIDS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_DISTRIBUTION_REFERRER_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->m:Lcom/yandex/metrica/impl/ob/je;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_PINNING_UPDATE_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_EASY_COLLECTING_ENABLED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/jc;->n:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/jc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->o:Lcom/yandex/metrica/impl/ob/je;

    .line 56
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->p:Lcom/yandex/metrica/impl/ob/je;

    .line 57
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->q:Lcom/yandex/metrica/impl/ob/je;

    .line 58
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->r:Lcom/yandex/metrica/impl/ob/je;

    .line 59
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->s:Lcom/yandex/metrica/impl/ob/je;

    .line 60
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->t:Lcom/yandex/metrica/impl/ob/je;

    .line 61
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->u:Lcom/yandex/metrica/impl/ob/je;

    .line 62
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->v:Lcom/yandex/metrica/impl/ob/je;

    .line 63
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->w:Lcom/yandex/metrica/impl/ob/je;

    .line 64
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    sget-object p2, Lcom/yandex/metrica/impl/ob/jc;->n:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->x:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "_startupserviceinfopreferences"

    .line 174
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/jf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/yandex/metrica/impl/ob/jc;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->u:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->w:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->o:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->p:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->o:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/jc;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->p:Lcom/yandex/metrica/impl/ob/je;

    .line 180
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->q:Lcom/yandex/metrica/impl/ob/je;

    .line 181
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->r:Lcom/yandex/metrica/impl/ob/je;

    .line 182
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->s:Lcom/yandex/metrica/impl/ob/je;

    .line 183
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->t:Lcom/yandex/metrica/impl/ob/je;

    .line 184
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->u:Lcom/yandex/metrica/impl/ob/je;

    .line 185
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->x:Lcom/yandex/metrica/impl/ob/je;

    .line 186
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->v:Lcom/yandex/metrica/impl/ob/je;

    .line 187
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->w:Lcom/yandex/metrica/impl/ob/je;

    .line 188
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/jc;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 189
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/jc;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 190
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ix;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ix;->j()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->q:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->v:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->r:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "_startupserviceinfopreferences"

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->s:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->t:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/jc;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->p:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/jc;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/jc;

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/jc;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->o:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/jc;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/jc;

    return-object p1
.end method
