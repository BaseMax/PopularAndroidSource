.class Lcom/yandex/metrica/impl/ob/ab$e;
.super Lcom/yandex/metrica/impl/ob/ab$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final b:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final c:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final d:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final e:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final f:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final g:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final h:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final i:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final j:Lcom/yandex/metrica/impl/ob/je;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final k:Lcom/yandex/metrica/impl/ob/gd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 77
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 79
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 83
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 91
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 93
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 95
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 97
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "BG_SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ab$e;->j:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ab$f;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 105
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->C()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$e;->d()V

    .line 115
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$e;->c()V

    .line 1120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1121
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1123
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 1130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    return-void
.end method

.method c()V
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 136
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, -0x80000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 138
    new-instance v2, Lcom/yandex/metrica/impl/ob/em;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    const-string v4, "foreground"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->b(J)Lcom/yandex/metrica/impl/ob/em;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 145
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v1, v5, v6}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    .line 147
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->d(J)Lcom/yandex/metrica/impl/ob/em;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 150
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/em;->a(Z)Lcom/yandex/metrica/impl/ob/em;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 155
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v0, v1, v5, v6}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_3

    .line 157
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->e(J)Lcom/yandex/metrica/impl/ob/em;

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 160
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    .line 162
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->a(J)Lcom/yandex/metrica/impl/ob/em;

    .line 164
    :cond_4
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/em;->h()V

    :cond_5
    return-void
.end method

.method d()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 172
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, -0x80000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 174
    new-instance v2, Lcom/yandex/metrica/impl/ob/em;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    const-string v4, "background"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->b(J)Lcom/yandex/metrica/impl/ob/em;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 181
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v1, v5, v6}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    .line 183
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->d(J)Lcom/yandex/metrica/impl/ob/em;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 186
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/em;->a(Z)Lcom/yandex/metrica/impl/ob/em;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 191
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v0, v1, v5, v6}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_3

    .line 193
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->e(J)Lcom/yandex/metrica/impl/ob/em;

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$e;->k:Lcom/yandex/metrica/impl/ob/gd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ab$e;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 196
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    .line 198
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/em;->a(J)Lcom/yandex/metrica/impl/ob/em;

    .line 200
    :cond_4
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/em;->h()V

    :cond_5
    return-void
.end method
