.class public final synthetic Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcab/snapp/passenger/f/j;->lambda$qENLQtatHY03pdxlyg87b8QBU3s(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
