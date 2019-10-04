.class public Lc/f/a/w;
.super Landroid/util/LruCache;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/f/a/x;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lc/f/a/x$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/f/a/x;


# direct methods
.method public constructor <init>(Lc/f/a/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/f/a/w;->a:Lc/f/a/x;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lc/f/a/x$a;)I
    .locals 0

    .line 1
    iget p1, p2, Lc/f/a/x$a;->b:I

    return p1
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lc/f/a/x$a;

    invoke-virtual {p0, p1, p2}, Lc/f/a/w;->a(Ljava/lang/String;Lc/f/a/x$a;)I

    move-result p1

    return p1
.end method
