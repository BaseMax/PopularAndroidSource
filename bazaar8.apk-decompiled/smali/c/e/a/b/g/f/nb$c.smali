.class public abstract Lc/e/a/b/g/f/nb$c;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/e/a/b/g/f/nb$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/a/b/g/f/nb<",
        "TMessageType;TBuilderType;>;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# instance fields
.field public zzagt:Lc/e/a/b/g/f/gb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/gb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/gb;->g()Lc/e/a/b/g/f/gb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    return-void
.end method


# virtual methods
.method public final q()Lc/e/a/b/g/f/gb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/gb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/gb;

    iput-object v0, p0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    return-object v0
.end method
