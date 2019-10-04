.class public Lb/z/c;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final a:Lb/C/a/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/RoomDatabase$c;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Landroidx/room/RoomDatabase$JournalMode;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$c;Landroidx/room/RoomDatabase$c;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lb/C/a/c$c;",
            "Landroidx/room/RoomDatabase$c;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$b;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lb/z/c;->a:Lb/C/a/c$c;

    .line 3
    iput-object p1, p0, Lb/z/c;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lb/z/c;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lb/z/c;->d:Landroidx/room/RoomDatabase$c;

    .line 6
    iput-object p5, p0, Lb/z/c;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lb/z/c;->f:Z

    .line 8
    iput-object p7, p0, Lb/z/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 9
    iput-object p8, p0, Lb/z/c;->h:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p9, p0, Lb/z/c;->i:Ljava/util/concurrent/Executor;

    .line 11
    iput-boolean p10, p0, Lb/z/c;->j:Z

    .line 12
    iput-boolean p11, p0, Lb/z/c;->k:Z

    .line 13
    iput-boolean p12, p0, Lb/z/c;->l:Z

    .line 14
    iput-object p13, p0, Lb/z/c;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    iget-boolean p2, p0, Lb/z/c;->l:Z

    if-eqz p2, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p2, p0, Lb/z/c;->k:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lb/z/c;->m:Ljava/util/Set;

    if-eqz p2, :cond_3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method
