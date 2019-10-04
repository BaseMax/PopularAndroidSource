.class public final Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;
.super Lcom/farsitel/bazaar/data/entity/ErrorModel;
.source "ErrorModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/ErrorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnExpected"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "unexpected error"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    return-void
.end method
