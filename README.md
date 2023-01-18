# action-serverless

```yml
- name: Deploy lambdas and layers
        uses: djleonskennedy/action-serverless@main
        with:
          args: deploy --debug
        env:
          SERVICE_ROOT: ./build/lambdas
          SERVERLESS_ACCESS_KEY: ${{ secrets.SERVERLESS_ACCESS_KEY }}
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID_CI }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY_CI }}
          AWS_REGION: ${{ secrets.AWS_REGION }}
          DATABASE_URL: ${{ secrets.PRISMA_DATABASE_URL }}
          PRISMA_BINARY_TARGET: rhel-openssl-1.0.x
```