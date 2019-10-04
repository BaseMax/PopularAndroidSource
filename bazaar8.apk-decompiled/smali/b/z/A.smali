.class public Lb/z/A;
.super Lb/z/j$b;
.source "RoomTrackingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/z/B;-><init>(Landroidx/room/RoomDatabase;Lb/z/h;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/z/B;


# direct methods
.method public constructor <init>(Lb/z/B;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/A;->b:Lb/z/B;

    invoke-direct {p0, p2}, Lb/z/j$b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb/c/a/a/c;->c()Lb/c/a/a/c;

    move-result-object p1

    iget-object v0, p0, Lb/z/A;->b:Lb/z/B;

    iget-object v0, v0, Lb/z/B;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lb/c/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
