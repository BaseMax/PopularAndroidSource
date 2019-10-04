.class public Lb/l/x;
.super Lb/l/c;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/c<",
        "Lb/l/j$a;",
        "Lb/l/j;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lb/l/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/l/c$a<",
            "Lb/l/j$a;",
            "Lb/l/j;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/l/w;

    invoke-direct {v0}, Lb/l/w;-><init>()V

    sput-object v0, Lb/l/x;->f:Lb/l/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lb/l/x;->f:Lb/l/c$a;

    invoke-direct {p0, v0}, Lb/l/c;-><init>(Lb/l/c$a;)V

    return-void
.end method
